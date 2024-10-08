# Kubernetes Deployment for My Application

![kuberenetes](https://github.com/user-attachments/assets/0a763809-e01b-4854-821f-1498be63cc75)

This repository contains Kubernetes manifests to deploy and manage the application.

## Table of Contents

- [Kubernetes Deployment for My Application](#kubernetes-deployment-for-my-application)
  - [Table of Contents](#table-of-contents)
  - [Prerequisites](#prerequisites)
  - [Kubernetes Manifests](#kubernetes-manifests)
  - [Deployment](#deployment)
  - [Usage](#usage)
  - [ingress](#ingress)
  - [Cleanup](#cleanup)

## Prerequisites

- **minikube** 
```bash
(minikube version: v1.33.1
commit: 5883c09216182566a63dff4c326a6fc9ed2982ff) 
```
- **kubectl** 
```bash
Client Version: v1.31.0
Kustomize Version: v5.4.2
Server Version: v1.30.0
```
- **Docker** (for building images)

## Kubernetes Manifests

- **Namespace**: Defines a namespace for isolating resources.
- **LimitRange**: Sets resource limits for the namespace.
- **Deployment**: Manages the deployment of the application.
- **Service**: Exposes the application within the cluster.
- **Ingress**: Manages external access to the services.
- **Pod**: Defines the individual pods (if needed).

## Deployment

1. **Create the namespace**:
    ```bash
    kubectl apply -f namespace.yaml
    ```

2. **Apply the LimitRange**:
    ```bash
    kubectl apply -f limits.yaml
    ```

3. **Deploy the application**:
    ```bash
    kubectl apply -f deployment.yaml
    ```

4. **Create the service**:
    ```bash
    kubectl apply -f service.yaml
    ```
5. **Create the pod**
   ```bash
   kubectl apply -f pod.yaml
   ```

6. **Set up ingress**:
    ```bash
    kubectl apply -f ingress.yaml
    ```

## Usage

- **Check the status of all cluster**:
    ```bash
    kubectl get all -n palestine-ns
    ```

then the application will be acess via the service 
```bash
minikube service palestine-svc -n palestine-ns
```

![img_16](https://github.com/user-attachments/assets/fc9b5fa9-f3cd-4fda-b5a9-208ba2d3e256)


## ingress
u should put the ip of minikube in /etc/hosts file 
```bash
minikube ip
echo < minikube ip > palestine.local > /etc/hosts 
```

Retrieve the Ingress service details:

```bash
kubectl get svc ingress-nginx-controller -n ingress-nginx

NAME                       TYPE       CLUSTER-IP       EXTERNAL-IP   PORT(S)                      AGE
ingress-nginx-controller   NodePort   10.103.176.209   <none>        80:30305/TCP,443:32344/TCP   25m
```
to open the first service (app) `http://palestine.local:`<TCP Port>`/`
![svc_1](https://github.com/user-attachments/assets/de893518-5bb6-48f3-8537-0a6d7164ee92)

to open the second service (app) `http://palestine.local:`<TCP Port>`/nginx`
![svc_2](https://github.com/user-attachments/assets/7b3c9490-ae64-4620-82a9-82df6a138113)


## Cleanup

To delete all the resources created:

```bash
kubectl delete all --all -n palestine-ns
```
