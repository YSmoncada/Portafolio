from django.contrib import admin
from django.urls import path
from . import views  # Importa las vistas del mismo directorio

urlpatterns = [
    path('', views.index, name='home'),  # Asocia la vista 'index' a la ruta raíz '/'
]