#!/bin/sh
RELEASE=3.6.0

# install dependencies
sudo apt install libbz2-dev liblzma-dev libsqlite3-dev libncurses5-dev libgdbm-dev zlib1g-dev libreadline-dev libssl-dev tk-dev build-essential zlib1g-dev libnss3-dev libffi-dev

# download and build Python
mkdir ~/python3
cd ~/python3
wget https://www.python.org/ftp/python/$RELEASE/Python-$RELEASE.tar.xz
tar xvf Python-$RELEASE.tar.xz
cd Python-$RELEASE
./configure --enable-optimizations
make -j 4
sudo make altinstall
sudo rm -rf ~/python3
cd ~