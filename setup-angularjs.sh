#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 14 March 2020,
# Description : Setup Angular JS Server on RedHat8.

# updating package repo.
# upgrading packages.
sudo yum -y update
sudo yum -y upgrade

# installing git and xz.
sudo yum -y install git xz

# exit immediately if a command exits with a non-zero exit status.
set -e

# debugging shell scritp.
# set -x

# downloading, extracting and setting u node server.
curl -JL https://nodejs.org/dist/v12.16.1/node-v12.16.1-linux-x64.tar.xz -o $HOME/node.tar.xz && \
tar  -xf $HOME/node.tar.xz -C $HOME                                                           && \
rm   -rf $HOME/node.tar.xz                                                                    && \
mv       $HOME/node-* $HOME/node

# setting node server path.
echo "export PATH=$HOME/node/bin:$PATH" | tee -a $HOME/.bashrc $HOME/.profile $HOME/.bash_profile

# reading and executing the content of a file.
source $HOME/.bashrc $HOME/.profile $HOME/.bash_profile

# creating new bash session.
exec

# installing latest angular cli.
npm install -g @angular/cli@latest

# creating new angualr workspace.
# note: run "exec $BASH" command.
# ng new hi

# changing into workspace folder.
# cd $HOME/hi

# launching new angular app on node server.
# ng serve --host $(hostname -I) --port 8080 --liveReload=true --buildEventLog=$HOME/hi/event.log
