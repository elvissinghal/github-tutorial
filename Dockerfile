FROM python:3.10-slim-buster

WORKDIR /src

COPY ./requirements.txt requirements.txt

RUN pip install -r requirements.txt

ENV DB_USERNAME myuser
ENV DB_PASSWORD mypassword
ENV DB_HOST 127.0.0.1
ENV DB_PORT 5433
ENV DB_NAME mydatabase

COPY ./config.py .
COPY ./app.py .

CMD python app.py
