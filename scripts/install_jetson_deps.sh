#!/bin/bash
sudo apt-get update -y
#sudo apt-get upgrade -y
sudo apt-get install curl python3-pip libffi-dev python-openssl libssl-dev zlib1g-dev 
sudo apt install rustc
sudo pip3 install docker-compose jetson-stats