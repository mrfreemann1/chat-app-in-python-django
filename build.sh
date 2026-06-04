#!/usr/bin/env bash
set -o errexit

# Actualizăm pip și instalăm setuptools pentru a preveni eroarea pkg_resources
pip install --upgrade pip setuptools wheel

# Instalăm pachetele aplicației
pip install -r requirements.txt

# Rulăm comenzile Django
python manage.py collectstatic --no-input
python manage.py migrate
