#Root directory: /app

apt update -y
apt upgrade -y

apt install sudo -y
apt install nano -y
apt install docker -y
apt install git -y

apt update -y
apt upgrade -y


#Initializing API
cd /app
mkdir -p api
cd api
git init -y
git clone https://github.com/LucasFurioFranco/brobath_api
cd brobath_api
./run.sh


#Initializing www
cd /app
mkdir -p www
cd www
git init -y
git clone https://github.com/LucasFurioFranco/brobath_www
cd brobath_www
./run.sh


#Initializing react
cd /app
mkdir -p react
cd react
git init -y
git clone https://github.com/LucasFurioFranco/brobath_react
cd brobath_react
./run.sh


cd /app
