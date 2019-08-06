FROM python:2.7-alpine 
COPY . /opt/mywebapp/
RUN pip install -r /opt/mywebapp/requirements.txt
ENTRYPOINT ["python", "/opt/mywebapp/app.py"]
