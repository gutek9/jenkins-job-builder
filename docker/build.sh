#!/bin/bash

if [ $# -ne 1 ]; then
        echo "Please provide tag. Usage: $0 [TAG]"
        exit 1
fi

IMAGE=gutek9/jenkins-job-builder
TAG=$1

cd .. && docker build . -t $IMAGE:latest && docker tag $IMAGE:latest $IMAGE:$TAG && docker push $IMAGE

