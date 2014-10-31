#!/bin/sh

sudo docker kill gitlab
sudo docker kill redis
sudo docker kill mysql

sudo docker rm gitlab
sudo docker rm redis
sudo docker rm mysql

