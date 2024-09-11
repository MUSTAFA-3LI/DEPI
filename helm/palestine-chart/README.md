# Helm Chart for Deploying My Application

This Helm chart is used to deploy your application on a Kubernetes cluster.

## Prerequisites

- Kubernetes cluster (v1.18+)
- Helm (v3+)

## Installation

If you don't have Helm installed, you can install it by following the instructions [here](https://helm.sh/docs/intro/install/).

## Deployment

```bash
helm install palestine /palestine-chart --namespace palestine-ns --create-namespace
```

to **Check the status of all cluster**:

    ```bash
    kubectl get all -n palestine-ns
    ``` 

then the application will be acess via the service 

```bash
minikube service palestine-svc
```

17

## Cleanup

To delete all the resources created:

```bash
kubectl delete all --all -n palestine-ns
```
