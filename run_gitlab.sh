#!/bin/sh

sudo docker run --name=mysql -d \
  -e 'DB_NAME=gitlabhq_production' -e 'DB_USER=gitlab' -e 'DB_PASS=password'\
  -v /opt/docker_data/mysql:/var/lib/mysql \
  sameersbn/mysql:latest

sudo docker run --name=redis -d \
  -v /opt/redis:/var/lib/redis \
 sameersbn/redis:latest

sudo docker run --name=gitlab -d \
  --link mysql:mysql \
  --link redis:redisio \
  -e 'GITLAB_PORT=10080' -e 'GITLAB_SSH_PORT=10022'\
  -p 10022:22 -p 10080:80 \
  -v /opt/docker_data/gitlab:/home/git/data \
  sameersbn/gitlab:latest
