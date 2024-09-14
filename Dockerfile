FROM python:3.9-alpine

WORKDIR /docker_app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt
    
COPY . .

EXPOSE 8000

STOPSIGNAL SIGINT

# CMD ["python3", "main.py"]
CMD ["gunicorn", "-b", "0.0.0.0:8000", "gateway"]