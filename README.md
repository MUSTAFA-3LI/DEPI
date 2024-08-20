![ CI (Test And Build) ](https://github.com/MUSTAFA-3LI/DEPI/actions/workflows/git_action.yml/badge.svg)

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
├── .github/
│ ├── git_action.yml
|
├── ansible
| ├── ansible.cfg
| ├── ansible.yaml
| ├── hosts.ini
| └── labsuser.pem
|
├── static/
│ ├── styles.css
│ └── favicon.ico
│
├── templates/
│ └── index.html
|
├── terraform
| ├── main.tf
| └── .terraform.lock.hcl
│
├── main.py
├── requirements.txt
├── README.md
├── tester.py
└── gateway.py
├── .gitignore
└── .dockerignore
├── Dockerfile
└── Jenkinsfiel
└── docker-compose.yaml

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

This workflow automates testing and building on push to `main` or any tag.

## Workflow Triggers

- Push to `main`
- Push with any tag

## Jobs

1. **Tester**
   - Checkout code
   - Set up Python 3.12
   - Install dependencies
   - Run tests with `pytest`

2. **Build**
   - Depends on Tester job
   - Checkout code
   - Build Docker image `palestine_weather:latest`

#### The CI/CD workflow automatically runs on each push to the main branch or when tags are pushed. To manually trigger the workflow or customize it, you can modify the .github/workflows/ci.yml file.

to check the git_action.yml file before push it in github we can use tool `act`
```bash
cd .github/workflows
act -W git_action.yml
```

## AWS and Jenkins
After creating AWS machines.

# Jenkins Pipeline for Testing and Docker Build

This Jenkins pipeline automates setting up a Python virtual environment, installing dependencies, running tests, and building a Docker image.

## Pipeline Stages

1. **Requirements And Test**
   - Set up Python virtual environment
   - Install dependencies from `requirements.txt`
   - Run tests with `tester.py`

2. **Docker Building**
   - Build Docker image tagged as `image`

## Usage

- Add the provided `Jenkinsfile` to your repository.
- Configure a Jenkins pipeline job to use this `Jenkinsfile`.
- Ensure Jenkins has Docker and Python 3 installed on its agents.

This pipeline is triggered manually or based on your preferred conditions, such as code pushes.



## Ansible 

This project sets up a development environment on three AWS virtual machines using Ansible. The setup includes installing essential packages, Docker, and deploying an app container.

## Project Structure

- `ansible.cfg`: Configuration file for Ansible.
- `hosts.ini`: Inventory file containing the AWS instances.
- `ansible.yaml`: Ansible playbook that defines the tasks to be executed on the AWS instances.

## Prerequisites

Before you can run the playbook, ensure you have (python, pipx, depandicies)

1. **Ansible** installed on your control machine. You can install it using:
    ```bash
    sudo apt update
    pipx install --include-deps ansible
    pipx install ansible-core
    pipx install ansible-core==2.12.3
    ```

2. **Access to your AWS instances** via SSH. Make sure you have the `labsuser.pem` key file and it's properly configured.
   ```bash
   cd Downloads/
   sudo chmod 400 ./labsuser.pem
   ssh -i ./labsuser.pem "the name of AWS virtual machine"
   ```

to run the playbook run the command:
```bash
ansible-playbook -i hosts.ini ansible.yaml
```

# Terraform AWS Configuration

This Terraform configuration sets up an AWS environment with a security group and EC2 instances.

## Key Components

- **AWS Security Group**: Allows SSH (port 22) and HTTP (port 80) inbound traffic from anywhere.
- **EC2 Instances**: Launches 3 `t3.medium` instances with Ubuntu 24.04 LTS.

```bash
cd terraform
terraform init
terraform plan
terraform apply
```
After finishing from AWS machines
```bash
terraform destory
```