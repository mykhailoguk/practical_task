FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential curl telnet
COPY terraform.json app_upload.py /tmp/
WORKDIR /tmp
RUN pip install flask
ENTRYPOINT ["python"]
CMD ["app_upload.py"]
