#!/bin/bash

sudo systemctl enable rpc-statd
sudo systemctl start rpc-statd

cd ~/cilium
contrib/vagrant/start.sh

