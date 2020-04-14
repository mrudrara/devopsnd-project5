#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
 dockerpath="manojkumarr2881/app:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run machinelearningapp --image=$dockerpath --restart=Never


# Step 3:
# List kubernetes pods
kubectl get pods 
# Step 4:
# Forward the container port to a host
kubectl port-forward machinelearningapp 8000:80           


