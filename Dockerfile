FROM python:alpine3.10
WORKDIR /app
COPY requirements.txt /app 
RUN pip install -r requirements.txt
EXPOSE 5001
COPY . /app
ENTRYPOINT python ./launch.py

#COPY requirements.txt /app/requirements.txt
#ENTRYPOINT ["python", "./launch.py"]
