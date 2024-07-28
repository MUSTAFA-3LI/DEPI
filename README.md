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
python3 -m venv venv
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
    docker run -p 8000:8000 mustafa3li/palestine_weather:latest
```

# Docker Compose
Docker Compose is a tool for defining and running multi-container Docker applications. It allows you to describe the infrastructure of your application using a YAML file (docker-compose.yaml). With Docker Compose, you can manage and orchestrate multiple containers as a single service, simplifying the process of creating, starting, stopping, and scaling your application.

## Activation Docker-Compose

```bash
    docker compose up -d
```
then we can open the wordpress from "[wordpress](http://localhost:5001/),
and we can open phpmyadmin from [phpmyadmin](http://localhost:7001/)

# GitHub Action

This project uses GitHub Actions to automate Continuous Integration (CI) and Continuous Deployment (CD) processes. The workflow is defined in the .github/workflows/ci.yml file and consists of the following jobs:

Workflow Overview |
Testing:

Runs on: ubuntu-latest
Steps:
Checkout code: Retrieves the source code from the repository.
Set up Python: Configures the Python environment.
Install dependencies: Installs the necessary Python packages specified in requirements.txt.
Run tests: Executes tests using pytest.
Build and Push Docker Image:

Runs on: ubuntu-latest, 
Dependencies: Runs after the tester job successed. 

Build Docker image automatically: Builds the Docker image with the tag palestine_weather:latest.

### Adding badge

![ CI (Test And Build) ](https://github.com/MUSTAFA-3LI/DEPI/actions/workflows/git_action.yml/badge.svg)



#### The CI/CD workflow automatically runs on each push to the main branch or when tags are pushed. To manually trigger the workflow or customize it, you can modify the .github/workflows/ci.yml file.

## AWS and Jenkins
after submitting into AWS account, creating module and creating EC2 instance, install jenkis tools in virtual machine to do CI/CD workflow.
we use jenkis tool to install requiements , test project and build docker image automatically .


