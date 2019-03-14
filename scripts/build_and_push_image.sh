#!/bin/sh

# Notes that IMAGE_REGISTRY and IMAGE_REGISTRY_LOGIN_CMD is stored on my machine environment

# Put your image registry endpoint
IMAGE_REGISTRY=${IMAGE_REGISTRY}

# Put your image registry login i.g ecr, dockerhub
IMAGE_REGISTRY_LOGIN_CMD=${IMAGE_REGISTRY_LOGIN_CMD}

# Version of the build
BUILD_VERSION=latest

## Login to ecr
${IMAGE_REGISTRY_LOGIN_CMD}

## Build image
docker build -t django_kube .

## Tag the image
docker tag django_kube:${BUILD_VERSION} ${IMAGE_REGISTRY}/django_kube:${BUILD_VERSION}

## Push the image
docker push ${IMAGE_REGISTRY}/django_kube:${BUILD_VERSION}