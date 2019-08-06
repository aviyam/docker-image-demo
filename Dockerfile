FROM python:2.7-alpine 
COPY . /opt/mywebapp/
RUN pip install -r /opt/mywebapp/requirements.txt
EXPOSE 5000
ENTRYPOINT ["python", "/opt/mywebapp/app.py"]
