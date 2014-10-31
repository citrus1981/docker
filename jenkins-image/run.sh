#!/bin/sh

cd `dirname $0`
sudo docker run -d -p 18080:8080 -v /opt/docker_data/jenkins:/jenkins --name jenkins -P demo/jenkins
