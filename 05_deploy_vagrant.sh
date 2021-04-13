#!/bin/bash

sudo systemctl enable rpc-statd
sudo systemctl start rpc-statd

cd $GOPATH/src/github.com/cilium/cilium
git pull

K8S=1 NWORKERS=1 contrib/vagrant/start.sh

