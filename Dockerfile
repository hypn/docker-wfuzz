FROM python:2.7-alpine

RUN apk update && apk add openssl-dev musl-dev curl-dev gcc
ENV PYCURL_SSL_LIBRARY=openssl
RUN pip install wfuzz

RUN apk del openssl-dev musl-dev gcc

ENTRYPOINT ["/usr/local/bin/wfuzz"]
