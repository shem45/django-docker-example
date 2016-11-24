FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN apt-get update && apt-get install -y mysql-client
RUN mkdir /app
WORKDIR /app
COPY requirements/app.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app/
