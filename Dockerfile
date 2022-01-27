FROM python:latest
RUN apt-get update && pip install Flask && pip install uwsgi
COPY . /www
ENV ENV WWW_PATH /www
RUN pip install -r /requirements.txt
