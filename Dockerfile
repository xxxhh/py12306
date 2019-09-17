FROM python:3.7.4-slim

ENV TZ Asia/Shanghai

WORKDIR /code

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

COPY ./env.py /config/env.py

