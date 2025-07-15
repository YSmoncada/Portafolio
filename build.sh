#!/bin/bash

# Instala las dependencias que están en la raíz del proyecto
pip install -r requirements.txt

# Navega a la carpeta que contiene manage.py
cd myapp

# Ejecuta los comandos de Django desde dentro de la carpeta myapp
python manage.py collectstatic --no-input --clear
python manage.py migrate