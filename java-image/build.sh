#!/bin/sh

cd `dirname $0`
sudo docker build --rm -t demo/java .
