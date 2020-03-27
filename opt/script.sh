#!/bin/bash

#Step 3 – Create A Django Application
mkdir /var/www
cd /var/www
django-admin startproject django_app
cd django_app
python3 manage.py migrate


#Step 4 – Create Super User
python3 manage.py createsuperuser

#Step 5 – Run Django Application
sed -i "s/\[]/\['*']/g" django_app/settings.py

python3 manage.py runserver 0.0.0.0:8010
