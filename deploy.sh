#!/bin/bash

set -e

echo "=============================="
echo " Healthletic Deployment"
echo "=============================="

IMAGE_NAME="mudigonda/healthletic-backend"
IMAGE_TAG="v1.0.0"

echo "Pulling Docker image..."
docker pull $IMAGE_NAME:$IMAGE_TAG

echo "Deploying with Helm..."
helm upgrade --install backend helm/backend \
  --set image.repository=$IMAGE_NAME \
  --set image.tag=$IMAGE_TAG

echo "Waiting for deployment..."
kubectl rollout status deployment/backend

echo "Deployment completed successfully!"
