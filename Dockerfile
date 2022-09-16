FROM python:3.7.3-slim

COPY requirements.txt /
RUN pip3 install -r /requirements.txt

COPY . /app
RUN chmod 777 /app
WORKDIR /app

ENTRYPOINT ["./gunicorn.sh"]
