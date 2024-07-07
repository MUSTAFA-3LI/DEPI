# Weather App From Implementation of API

This is a simple weather app built with Flask that displays weather information for a specific region ( user choose the region from site [https://weatherwidget.io/] and get the code of his/her choices, then get the code from site directly ) using Weatherwidget.io. The app serves static files and includes automated tests for verifying the server responses.

## Features

- Displays weather information for a specified region
- Serves static files (CSS and favicon)
- Automated testing using `unittest`

## Development

```bash
git clone https://github.com/MUSTAFA-3LI/DEPI
cd DEPI
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Project Structured
```bash
Implement_UI_around_public_API/
│
├── static/
│ ├── styles.css
│ └── favicon.ico
│
├── templates/
│ └── index.html
│
├── main.py
├── requirements.txt
├── README.md
├── tester.py
└── gateway.py

```

# Servers

1. **Development server**:

    Run the Flask development server:

    ```bash
    python3 main.py
    ```

    The app will be available at `http://127.0.0.1:8000`.

2. **Production server**:

    Run the app with Gunicorn:

    ```bash
    gunicorn gateway
    ```

The app will be available at `localhost:8000`.


# Testing 

test the response of GET request (= 200), 
test the styles.css 's response (= 200 or 304), 
test the favicon.ico 's response (= 200 or 304)

```bash
    pytest tester.py
    python3 tester.py
```


# Docker 

This repository contains a Dockerized Python application.

## Installation

Before you begin, ensure you have Docker installed on your system.

- [Docker Installation Guide](https://docs.docker.com/engine/install/)

## Build Dockerfile
```bash
    docker build -t < image_name > .
```

## Run Dockerfile
```bash
    docker run -p8000:8000 < image_name >
```

## Pull my image locally
Pulling the Docker Image
If you prefer to pull the pre-built Docker image from Docker Hub instead of building it locally:

```bash
    docker pull mustafa3li/palestine_weather:latest
    docker run -p8000:8000 palestine_image
```

