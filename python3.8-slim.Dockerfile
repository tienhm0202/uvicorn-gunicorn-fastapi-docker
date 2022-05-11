FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim

LABEL maintainer="Hoang Manh Tien <tienhm.0202@gmail.com>"

RUN apt-get update && apt-get install git curl -y && rm -rf /var/lib/apt/lists/*
RUN curl -sSL https://install.python-poetry.org | POETRY_HOME='/usr/local' python3 -
RUN poetry --version