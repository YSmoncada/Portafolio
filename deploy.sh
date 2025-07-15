#!/bin/bash

# Detiene el script inmediatamente si algún comando falla, para mayor seguridad.
set -e

# 1. Instala las dependencias de Python desde tu archivo de requerimientos.
echo "Instalando dependencias desde requirements.txt..."
pip install -r requirements.txt

# 2. Recolecta todos los archivos estáticos (CSS, JS, imágenes) en un solo directorio.
echo "Recolectando archivos estáticos..."
python manage.py collectstatic --noinput

# 3. Aplica las migraciones pendientes a la base de datos.
echo "Aplicando migraciones de la base de datos..."
python manage.py migrate

# 4. Inicia el servidor Gunicorn para servir tu aplicación.
# ¡RECUERDA REEMPLAZAR 'your_project_name' con el nombre correcto!
echo "Iniciando Gunicorn..."
gunicorn your_project_name.wsgi:application