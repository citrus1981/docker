#!/bin/sh

cd `dirname $0`
sudo docker kill jenkins
sudo docker rm jenkins
