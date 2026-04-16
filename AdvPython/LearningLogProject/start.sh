#!/usr/bin/env bash


python manage.py collectstatic --noinput 
python manage.py migrate
gunicorn learning_log.wsgi:application
