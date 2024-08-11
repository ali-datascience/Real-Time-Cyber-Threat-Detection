from django.db import models

# Create your models here.

class userlogin(models.Model):
    id = models.IntegerField(primary_key=True)
    username = models.CharField(max_length=500)
    password = models.CharField(max_length=500)
    name = models.CharField(max_length=500)
    email = models.CharField(max_length=500)

    class Meta:
        db_table = 'userlogin'
    
    def __str__(self):
        return self.id
    
class techteam(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=500)
    phone = models.CharField(max_length=500)
    jobtitle = models.CharField(max_length=500)
    email = models.CharField(max_length=500)

    class Meta:
        db_table = 'techteam'
    
    def __str__(self):
        return self.id
    
class datafraud(models.Model):
    id = models.IntegerField(primary_key=True)
    ip = models.CharField(max_length=500)
    username = models.CharField(max_length=500)
    password = models.CharField(max_length=500)
    browser = models.CharField(max_length=500)
    dateinput = models.DateTimeField()
    fraudtype= models.CharField(max_length=500)

    class Meta:
        db_table = 'datafraud'
    
    def __str__(self):
        return self.id