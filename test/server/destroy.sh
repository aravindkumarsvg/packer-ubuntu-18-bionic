#!/bin/bash

# Adds the server vagrant box
vagrant box remove --force ubuntu-bionic-18-04-server 

# Removes the vagrant folder
rm -rf ./test/server/.vagrant/

# Prints the message
echo -e "\nServer box removed\n"