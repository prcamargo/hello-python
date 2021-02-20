#!/bin/sh

K8SHOST=${K8SHOST:=172.28.128.11}

#cd app
#docker build -f ../docker/Dockerfile -t hello-python:latest .
#cd ..
#docker save hello-python:latest > hello-python.tar
#scp -i ../rke/vagrant/.vagrant/machines/kubenode01/virtualbox/private_key ./hello-python.tar  vagrant@${K8SHOST}:hello-python.tar
ssh -i ../rke/vagrant/.vagrant/machines/kubenode01/virtualbox/private_key vagrant@${K8SHOST} "docker load < hello-python.tar"

