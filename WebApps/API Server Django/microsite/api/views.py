from django.shortcuts import render

from django.http.response import JsonResponse
from rest_framework.parsers import JSONParser
from rest_framework import status
from rest_framework.decorators import api_view,permission_classes
from rest_framework.permissions import IsAuthenticated
import json
from django.db import connections
from django.http import HttpResponse

from datetime import datetime
from nltk.corpus import stopwords
import nltk
nltk.download('stopwords')
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.feature_extraction.text import ENGLISH_STOP_WORDS
import joblib
from nltk.corpus import stopwords
import pandas as pd
from sklearn.decomposition import TruncatedSVD

from django.template.loader import render_to_string, get_template
from django.core.mail import EmailMessage
from django.conf import settings
from django.core.mail import send_mail
from datetime import datetime

from api.models import userlogin
from api.serializers import userloginSerializer
import hashlib


@api_view(['POST'])
@permission_classes((IsAuthenticated,))
def login(request):
    """
        Api Save Data To Master Store Portal
        --------------------
        To make a request please provide:
        -**user**
        -**password**
        -**IP**
        -**content**
        -**browser**
    """
    if request.method == 'POST': 
        cursor1= connections['default'].cursor()
        datenow = datetime.today()
        body = json.loads(request.body)
        model_path = 'D:/Ali/Project/TSDN/API/microsite/api/webscuritymodel.joblib'
        loaded_model = joblib.load(model_path)
        data = pd.read_csv('D:/Ali/Project/TSDN/API/microsite/api/datadimention.csv')
        X = data['payload']
        y = data['Label']
        vectorizer = TfidfVectorizer(min_df=2, max_df=0.8, stop_words='english')
        X = vectorizer.fit_transform(X.values.astype('U')).toarray()

        query_vectorizeduser = vectorizer.transform([body['user']])
        query_vectorizedpassword = vectorizer.transform([body['password']])

        svdprod = TruncatedSVD(n_components=100)

        X_test_user = query_vectorizeduser
        X_test_password = query_vectorizedpassword

        # Make predictions
        predictionuser = loaded_model.predict(X_test_user)[0]
        predictionpassword = loaded_model.predict(X_test_password)[0]

       
        
        if predictionuser==0:
            predictionuser="CMDI"
        elif predictionuser==1:
            predictionuser="Normal"
        elif predictionuser==2:
            predictionuser="Path Traversal"
        elif predictionuser==3:
            predictionuser="SQLI Injection"
        else:
            predictionuser="XSS"

        if predictionpassword==0:
            predictionpassword="CMDI"
        elif predictionpassword==1:
            predictionpassword="Normal"
        elif predictionpassword==2:
            predictionpassword="Path Traversal"
        elif predictionpassword==3:
            predictionpassword="SQLI Injection"
        else:
            predictionpassword="XSS"

        fraudtype=predictionuser+" "+predictionpassword
        
        if predictionuser!="Normal" or predictionpassword!="Normal":
            # message = get_template('mail.html')
            insertcust= """insert into datafraud (ip,username,password,browser,dateinput,fraudtype) values ('{0}','{1}','{2}','{3}','{4}','{5}')
            """.format(body['ip'],body['user'].replace("'", ""),body['password'].replace("'", ""),body['browser'],datenow,fraudtype)
            cursor1.execute(insertcust)
            message = 'Dear IT Team, telah terjadi serangan Cyber "{0}",  pada pukul "{1}" mohon segra dilakukan pengecekan mohon segera di folowup.'.format(fraudtype,datenow)

            from_email = 'Wingstop Indonesia <noreply@wingstop.o.id>'
            query = """SELECT name,phone,email FROM techteam"""
            cursor1.execute(query)
            rows = cursor1.fetchall()
            result = []
            keys = ('name', 'phone', 'email')
            recipient_list = []
            for row in rows: 
                row = list(row)
                recipient_list.append(row[2])
                result.append(dict(zip(keys, row)))

            msg = EmailMessage(
                "Serangan Cyber Terdeteksi - CRITICAL",
                message,
                from_email,
                recipient_list,
            )
            msg.content_subtype ="html"
            msg.send()

            predicted="Anda terdeteksi melakukan serangan cyber"
            return JsonResponse({'result': '{0}'.format(predicted)},safe=False)
        else:
            try: 
                data = userlogin.objects.get(username=body["user"],password=calculate_md5(body['password']))
                datacustomer = userloginSerializer(data)
                return JsonResponse({'result': datacustomer.data},safe=False)
            except userlogin.DoesNotExist: 
                return JsonResponse({'result': 'user atau password salah'}, status=status.HTTP_404_NOT_FOUND) 
        
    return JsonResponse({'result': 'error retraive data failed!'}, status=status.HTTP_400_BAD_REQUEST)

@api_view(['POST'])
@permission_classes((IsAuthenticated,))
def getlogfraud(request):
    if request.method == 'POST':
        cursor1 = connections['default'].cursor()
        product_data = json.loads(request.body.decode("utf-8"))
        body = json.loads(request.body)
        user = body['user']
        query = """SELECT ip,username,password,browser,dateinput from datafraud"""
        cursor1.execute(query)
        rows = cursor1.fetchall()
        result = []
        keys = ('ip','username','password','browser','dateinput')
        for row in rows:
            row = list(row)
            row[4] = row[4].strftime('%Y-%m-%d %H:%M:%S')
            result.append(dict(zip(keys, row)))
        json_data = json.dumps({'result': result})
        return HttpResponse(json_data, content_type="application/json")
    return JsonResponse({'message': 'error retraive data failed!'}, status=status.HTTP_400_BAD_REQUEST)

def calculate_md5(input_string):
    md5_hash = hashlib.md5()
    md5_hash.update(input_string.encode('utf-8'))
    md5_hex = md5_hash.hexdigest()
    return md5_hex