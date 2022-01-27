FROM python:latest
RUN apt-get update && pip install --upgrade pip && pip install Flask && pip install uwsgi
COPY . /www
ENV ENV WWW_PATH /www
RUN pip install -r /www/requirements.txt
EXPOSE 5000
CMD uwsgi --socket 0.0.0.0:5000 --protocol=http -w app:app --logto /tmp/mylog.log
