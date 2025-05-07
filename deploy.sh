#!/bin/bash

EC2_HOST=$1
IMAGE_NAME=$2
KEY=$3

echo "Deploying to $EC2_HOST with image $IMAGE_NAME"

ssh -o StrictHostKeyChecking=no -i $KEY $EC2_HOST << EOF
  docker pull $IMAGE_NAME:latest
  docker stop nodeapp || true
  docker rm nodeapp || true
  docker run -d --name nodeapp -p 80:3000 $IMAGE_NAME:latest
EOF
