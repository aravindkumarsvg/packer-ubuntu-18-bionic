#!/bin/bash

# Adds the desktop vagrant box
vagrant box remove --force ubuntu-bionic-18-04-desktop

# Removes the vagrant folder
rm -rf ./test/desktop/.vagrant/

# Prints the message
echo -e "\nDesktop box removed\n"