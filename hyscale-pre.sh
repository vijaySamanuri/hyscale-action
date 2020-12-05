#!/bin/bash
docker login --username=$DOCKER_USERNAME  --password=$DOCKER_PASSWORD

sudo mkdir p ~/.kube
echo "${KUBECONFIG}" | sudo tee ~/.kube/config

