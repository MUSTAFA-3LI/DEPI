# Helm Chart for Deploying My Application

![helm](https://github.com/user-attachments/assets/025259fd-11b3-4f67-8a12-f8481e3aa02f)

This Helm chart is used to deploy your application on a Kubernetes cluster.

## Table of Contents

- [Helm Chart for Deploying My Application](#helm-chart-for-deploying-my-application)
  - [Table of Contents](#table-of-contents)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Deployment](#deployment)
  - [Cleanup](#cleanup)

## Prerequisites

- Kubernetes cluster (v1.18+)
- Helm (v3+)

## Installation
 [Install Helm](https://helm.sh/docs/intro/install/).

## Deployment

- Run the following command:
```bash
helm install < name of helm > < directory > --namespace < namespace > --create-namespace
```

to **Check the status of all cluster**:

    ```bash
    kubectl get all -n palestine-ns
    ``` 

then the application will be acess via the service 

```bash
minikube service < name of service > -n < namespace >
```

![img_17](https://github.com/user-attachments/assets/091ea5fa-58a7-4929-8bd9-9823256fb5e3)


## Cleanup

To delete all the resources created:

```bash
kubectl delete all --all -n < namespace >
```
