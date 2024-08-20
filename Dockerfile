FROM python:3

WORKDIR /docker_app

COPY . .

RUN pip3 install -r requirements.txt 
    

EXPOSE 8000

STOPSIGNAL SIGINT

# CMD ["python3", "main.py"]
CMD ["gunicorn", "-b", "0.0.0.0:8000", "gateway"]