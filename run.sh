#!/bin/bash 
#python3 -m venv venv
#source venv/bin/activate
pip3 install -r requirements.txt
gunicorn app:app -b 0.0.0.0:5000
#FLASK_APP=app
#flask run --host 0.0.0.0 --port 5000 --reload
