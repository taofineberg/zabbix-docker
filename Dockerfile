# syntax=docker/dockerfile:1

FROM python:3.9-alpine

WORKDIR /usr/src/app

# install requirements, copy over the app
COPY requirements.txt /usr/src/app/requirements.txt
RUN apk add --no-cache python3 py3-pip && pip3 install -r /usr/src/app/requirements.txt
COPY . /usr/src/app/

CMD ["python", "./your-daemon-or-script.py"]