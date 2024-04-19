#!/bin/bash

github_repo=$1
dockerhub_repo=$2
git clone "https://github.com/$github_repo.git" temp_repo

docker build -t "$dockerhub_repo" temp_repo

docker login -u $DOCKER_USER -p $DOCKER_PWD

docker build -t "$dockerhub_repo" temp_repo

docker push "$dockerhub_repo"

rm -fr temp_repo


