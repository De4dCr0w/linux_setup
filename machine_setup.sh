#!/bin/bash
cd $HOME
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install openssh-server
sudo apt-get -y install gcc
sudo apt-get -y install g++
sudo apt-get -y install curl
sudo apt-get -y install tmux
sudo apt-get -y install openvpn
sudo apt-get -y install libc-dev:i386
sudo apt-get -y install libssl-dev
sudo apt-get -y install libssl-dev:i386
sudo apt-get -y install gcc-multilib g++-multilib
sudo apt-get -y install libc6-dev-i386
sudo apt-get -y install git
sudo apt-get -y install nmap
sudo apt-get -y install gdb
sudo apt-get -y install python-pip
sudo pip install pwntools
git clone https://github.com/niklasb/libc-database
git clone https://github.com/longld/peda.git ~/peda
git clone https://github.com/scwuaptx/Pwngdb
cp Pwngdb/pwngdb.py .
cp Pwngdb/.gdbinit .
