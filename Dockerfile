ARG PYTHON_VERSION=3.8

FROM python:${PYTHON_VERSION}

COPY ./requirements.txt /tmp

RUN apt-get update -y

RUN pip install -r /tmp/requirements.txt

RUN rm -f /tmp/requirements

