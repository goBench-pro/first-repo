FROM python

LABEL version="0.1.0"
LABEL description="This image is used to build docker container from an unknow user"

WORKDIR run

COPY main.py .

ENTRYPOINT ["python", "/run/main.py"]
