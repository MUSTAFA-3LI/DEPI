![ CI (Test , Build , Push ) ](https://github.com/MUSTAFA-3LI/DEPI/actions/workflows/git_action.yml/badge.svg)

# Weather App
A simple weather app built with Flask that displays weather information for a user-specified region using Weatherwidget.io [https://weatherwidget.io/]
. The app serves static files and includes automated tests for verifying server responses.

## Table of Contents

- [Weather App](#weather-app)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Prerequisites](#prerequisites)
  - [Development](#development)
  - [Usage](#usage)
- [Testing](#testing)
- [Docker](#docker)
  - [Installation](#installation)
  - [Build Dockerfile](#build-dockerfile)
  - [Run Dockerfile](#run-dockerfile)
  - [Pull my image locally](#pull-my-image-locally)
  - [Docker Compose](#docker-compose)
    - [Activation Docker-Compose](#activation-docker-compose)
  - [Push my image to DockerHub](#push-my-image-to-dockerhub)
  - [Jenkinks](#jenkinks)
    - [Jenkins Pipeline](#jenkins-pipeline)
  - [Jenkins installation](#jenkins-installation)
  - [Pipeline Stages](#pipeline-stages)
  - [Usage](#usage-1)

## Features

- Displays weather information for a specified region
- Serves static files (CSS and favicon)
- Automated testing using `unittest`

## Prerequisites

Ensure you have the following installed:

1. **Python 3.12.3**
2. **requirements.txt**
3. **Docker**
4. **act**
5. **Jenkins**
6. **Ansible**
7. **Terraform**
8. **AWS CLI**
9. **Minikube and kubectl**
10. **Helm**

## Development

Instructions for deploying the application:

1. Ensure all prerequisites are installed.
2. Clone the repository and navigate to the project directory.
3. Set up the Python virtual environment and install dependencies.
4. Run the application using gunicorn gateway.
5. Open the app at localhost:8000.

```bash
git clone https://github.com/MUSTAFA-3LI/DEPI
cd DEPI
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Usage

```bash
    gunicorn gateway
```

- Open App `localhost:8000`.

![img_2](https://github.com/user-attachments/assets/c41d4121-d153-40b3-8289-5760a65c9639)


# Testing 

To run tests, use the following commands:

```bash
    pytest tester.py
    python3 tester.py
```
The tests include:

- Verifying the response of a GET request (expecting status code 200)
- Checking the response for styles.css (expecting status code 200 or 304)
- Checking the response for favicon.ico (expecting status code 200 or 304)

![img_3](https://github.com/user-attachments/assets/f15a4528-dd7b-496c-9a00-8332d2afeece)

# Docker 

![docker](https://github.com/user-attachments/assets/c5bd4cf1-cd4f-4b8a-b46e-fea654eb1436)

This repository contains a Dockerized Python application.

## Installation

Ensure Docker is installed on your system. Follow the official [Docker Installation Guide](https://docs.docker.com/engine/install/).


## Build Dockerfile
```bash
    docker build -t < image_name > .
```
![img_4](https://github.com/user-attachments/assets/3671e149-b72f-445b-bd53-b2c49322ea37)


## Run Dockerfile
```bash
    docker run -p8000:8000 < image_name >
```

## Pull my image locally

```bash
    docker pull mustafa3li/palestine:latest
    docker run -p 8000:8000 mustafa3li/palestine:latest
```
![img_2](https://github.com/user-attachments/assets/c41d4121-d153-40b3-8289-5760a65c9639)



## Docker Compose
### Activation Docker-Compose

```bash
    docker compose up -d
```
![img_5](https://github.com/user-attachments/assets/660d3b5a-dc2b-4c5e-a286-e14167ae0770)


- Access "[wordpress](http://localhost:5001/)
- Acsess [phpmyadmin](http://localhost:7001/)



## Push my image to DockerHub
```bash
    docker login # then enter username and password of your DockerHub account
    docker push < username >/< image_name >:TAG
```
![img_6](https://github.com/user-attachments/assets/5443ec12-f00f-48df-bf81-278808a14194)


## Jenkinks

![Jenkins](https://github.com/user-attachments/assets/7fed81a8-0043-4174-b1c1-27552f672a35)

### Jenkins Pipeline

This Jenkins pipeline automates setting up a Python virtual environment, installing dependencies, running tests, and building a Docker image.

## Jenkins installation
[Install Jenkins on Linux](https://www.jenkins.io/doc/book/installing/linux)

- Get the passkey of Jenkins server to login from default port `8080`

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

## Pipeline Stages

1. **Requirements And Test**
   - Set up Python virtual environment
   - Install dependencies from `requirements.txt`
   - Run tests with `tester.py`

2. **Docker Building**
   - Build Docker image tagged as `image`
  
3. **Login in DockerHub**
4.  **Push image autamatincly**

## Usage

- Add the provided `Jenkinsfile` to your repository.
- Configure a Jenkins pipeline job to use this `Jenkinsfile`.
- Ensure Jenkins has Docker and Python 3 installed on its agents.
- Add necessary credentials to the Jenkins pipeline

1. **Automaticly**

![img_7](https://github.com/user-attachments/assets/8484dcf0-ee0e-41da-a03c-7f19effcc70f)

2. **Manualy**

![img_8](https://github.com/user-attachments/assets/df197994-221b-431a-a2e7-65c6eec4fde7)

In two ways the image is pushed in dockerhub

![docker hub](https://github.com/user-attachments/assets/a56ea330-ce13-40e1-b811-cee7f3f766b5)

