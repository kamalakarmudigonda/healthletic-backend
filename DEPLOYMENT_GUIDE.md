# Healthletic Backend Deployment Guide

## Prerequisites

- Git
- Docker
- Kubernetes
- Helm
- Python 3.11

## Clone Repository

```bash
git clone https://github.com/kamalakarmudigonda/healthletic-backend.git
cd healthletic-backend
```

## Build Docker Image

```bash
docker build -t mudigonda/healthletic-backend:v1.0.0 .
```

## Push Docker Image

```bash
docker push mudigonda/healthletic-backend:v1.0.0
```

## Deploy

```bash
chmod +x deploy.sh
./deploy.sh
```

## Verify

```bash
kubectl get pods
kubectl get svc
helm list
```

## Rollback

```bash
helm rollback backend
```
