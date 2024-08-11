"""microsite URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path,include,re_path
from rest_framework.authtoken.views import obtain_auth_token
from . import schema_view


admin.site.site_header = "Welcome TSDN Core API System"
admin.site.site_title = "Portal TSDN"
admin.site.index_title = "Portal Admin"

# router = DefaultRouter()
# router.register('api/order/user/savecustomer',userview.savecustomer)
 
urlpatterns = [   
    path('admin/', admin.site.urls),
    path('',include('api.urls')),
    path('api/api-token-auth', obtain_auth_token, name='api_token_auth'),
    #SWAGER
    path('', schema_view.schema_view),
]
