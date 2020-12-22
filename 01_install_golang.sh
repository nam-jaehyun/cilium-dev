#!/bin/bash

# install golang 1.15.2
sudo apt-get update
sudo apt-get -y install gcc libsctp-dev make

mkdir -p /tmp/build

wget https://dl.google.com/go/go1.15.2.linux-amd64.tar.gz -O /tmp/build/go1.15.2.linux-amd64.tar.gz
sudo tar -xvf /tmp/build/go1.15.2.linux-amd64.tar.gz -C /usr/local

if [ -z "$GOPATH" ]; then
    echo >> ~/.bashrc
    echo "export GOPATH=\$HOME/go" >> ~/.bashrc
    echo "export GOROOT=/usr/local/go" >> ~/.bashrc
    echo "export PATH=\$PATH:/usr/local/go/bin:\$HOME/go/bin" >> ~/.bashrc
    echo >> ~/.bashrc
fi

rm -rf /tmp/build

echo "Please log in again"

