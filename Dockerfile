FROM ubuntu:18.04

# Special case
#COPY sources.list /etc/apt/
#COPY pip.conf /etc/pip.conf

COPY . /opt/mywebapp/
RUN apt-get update && \
    apt-get install -y python python-pip &&  \
	pip install -r /opt/mywebapp/requirements.txt && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 5000
ENTRYPOINT ["python", "/opt/mywebapp/app.py"]
