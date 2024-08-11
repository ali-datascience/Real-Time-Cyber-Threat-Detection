from django.contrib import admin
from .models import techteam,userlogin,datafraud
# Register your models here.

@admin.register(techteam)
class techteam(admin.ModelAdmin):
    list_display = ('id', 'name', 'phone', 'jobtitle','email')


@admin.register(userlogin)
class userlogin(admin.ModelAdmin):
    list_display = ('id', 'username', 'password', 'name','email')


@admin.register(datafraud)
class datafraud(admin.ModelAdmin):
    list_display = ('id', 'ip','username','password', 'browser','dateinput','fraudtype')