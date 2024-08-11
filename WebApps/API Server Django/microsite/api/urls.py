from django.urls import path
from . import views

urlpatterns = [
    path('coreapi/api/login',views.login),
    path('coreapi/api/getlogfraud',views.getlogfraud),
]


