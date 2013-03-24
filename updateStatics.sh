#!/bin/sh
# Simple script to update the dhcp-static files from git

# CONFIGURE THIS TO YOUR GIT DIRECTORY
GIT_REPO=/home/dhcp/dhcp-static

# CONFIGURE THIS TO THE USER TO RUN THE GIT COMMANDS AS
USER=dhcp

cd $GIT_REPO

su -c "git pull" $USER

cp $GIT_REPO/static.conf /etc/dhcp/static.conf
