#!/bin/bash

ALLURE_RELEASE=2.20.1
PUBLIC_TAG=2.20.1-1
docker build --tag allure-release -f docker-custom/Dockerfile.bionic-custom --build-arg VERSION=$PUBLIC_TAG --build-arg ALLURE_RELEASE=$ALLURE_RELEASE .

docker login
docker tag allure-release klilleby/allure-docker-service:${PUBLIC_TAG}
docker push klilleby/allure-docker-service:${PUBLIC_TAG}