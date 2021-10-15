FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim

LABEL maintainer="Hoang Manh Tien <tienhm.0202@gmail.com>"

RUN apt-get update && apt-get install git -y && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir poetry