FROM python:2.7
# https://hub.docker.com/_/python/
# https://docs.djangoproject.com/en/1.11/
# http://docs.gunicorn.org/en/stable/settings.html

MAINTAINER Dean Taylor <dean@gohitech.net>
EXPOSE 8000
ENTRYPOINT ["/docker-entrypoint.sh"]
#CMD [ "python", "./your-daemon-or-script.py" ]
WORKDIR /usr/src/app

RUN pip install --no-cache-dir Django gunicorn

COPY docker-entrypoint.d/ /docker-entrypoint.d/
COPY docker-entrypoint.sh /

#COPY requirements.txt ./
#RUN pip install --no-cache-dir -r requirements.txt


#RUN python manage.py init