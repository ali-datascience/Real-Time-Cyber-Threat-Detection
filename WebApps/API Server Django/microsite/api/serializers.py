from rest_framework import serializers
from api.models import *

class userloginSerializer(serializers.ModelSerializer):
    class Meta:
        model = userlogin
        fields = ('id',
                  'username',
                  'password',
                  'name',
                  'email',)