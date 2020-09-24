#!/bin/bash

apt-get update -y
apt-get upgrade -y
apt-get install software-properties-common -y
add-apt-repository ppa:deadsnakes/ppa
apt install python3.6 -y
apt install python3-virtualenv -y
mkdir -p /etc/cron.d/

