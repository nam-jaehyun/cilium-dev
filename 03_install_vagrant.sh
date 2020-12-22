#!/bin/bash

wget https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo dpkg -i vagrant_2.2.9_x86_64.deb
sudo apt-get -y install nfs-kernel-server
rm vagrant_2.2.9_x86_64.deb

echo "Please run the next script"

