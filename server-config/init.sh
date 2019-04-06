#!/bin/bash
curl https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm > /tmp/epel-release-latest-7.noarch.rpm
yum install /tmp/epel-release-latest-7.noarch.rpm -y
# install nginx
# yum install nginx -y
# systemctl start nginx

# Read file from Gist
# curl https://gist.githubusercontent.com/abelhbeyene/a050c040435c03fa15dfc06b9fa5461d/raw/c894596d07225285174a52de01a9e3760ed7271f/AWS%2520test%2520file > /usr/share/nginx/html/index.html

# Install docker: https://github.com/NaturalHistoryMuseum/scratchpads2/wiki/Install-Docker-and-Docker-Compose-(Centos-7)
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install http://mirror.centos.org/centos/7/extras/x86_64/Packages/container-selinux-2.68-1.el7.noarch.rpm -y
yum install docker-ce -y
usermod -aG docker $(whoami)
systemctl enable docker.service
systemctl start docker.service

# Install docker compose
yum install -y python-pip
pip install docker-compose
yum upgrade python* -y

# get docker-compose file and start container
cd ../
docker-compose up --build -d