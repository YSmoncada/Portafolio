from . import views
from django.urls import path, include

urlpatterns = [
    path('', views.home, name='home'),
    path("__reload__/", include("django_browser_reload.urls")),
    
    ]
