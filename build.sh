#!/bin/sh

K8SHOST=${K8SHOST:=10.10.4.254}

#cd app
#docker build -f ../docker/Dockerfile -t hello-python:latest .
#cd ..
#docker save hello-python:latest > hello-python.tar
#scp ./hello-python.tar  ${K8SHOST}:hello-python.tar
ssh taro@${K8SHOST} "docker load < hello-python.tar"

