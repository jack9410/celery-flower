FROM python:3.10.8-alpine

WORKDIR /app

ARG REQUIREMENT='requirements.txt'

# get packages
COPY $REQUIREMENT /tmp/

RUN pip install --no-cache-dir -r /tmp/$REQUIREMENT

COPY . /app
