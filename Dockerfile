FROM python:3.11.4-slim-buster

RUN pip install --upgrade pip \
    && pip install --no-cache-dir pipenv \
    && pipenv install --deploy --system


WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . .