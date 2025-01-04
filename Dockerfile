FROM alpine:3.21.0

LABEL version="0.1.0"
LABEL description="This image is used to build docker container from an unknow user"

RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN python3 -m ensurepip
RUN pip3 install --no-cache --upgrade pip setuptools

WORKDIR run

COPY main.py .

ENTRYPOINT ["python", "main.py"]
