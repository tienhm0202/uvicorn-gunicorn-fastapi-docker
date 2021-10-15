#/bin/sh
set -ex
docker build -f ${1}.Dockerfile -t ${2}/uvicorn-gunicorn-fastapi:${1} .
docker image prune -f
docker push ${2}/uvicorn-gunicorn-fastapi:${1}