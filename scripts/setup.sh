#!/bin/sh
#Run as root
#Erlang deps
apt-get -y install build-essential autoconf m4 libncurses5-dev libwxgtk3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk
# git
apt-get -y install git
# new user setup
adduser tomasz
cp -r .ssh/ /home/tomasz/
chown -R tomasz:tomasz /home/tomasz/.ssh/
# install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
printf '
# MY CHANGES
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
' >> .bashrc
