FROM python:3.7
COPY ./ /app
# RUN pip install Django==2.2.20 config --global http.sslVerify false
RUN pip install -r /app/requirements.txt
WORKDIR /app/infra_project/
CMD python manage.py runserver 0:5000
