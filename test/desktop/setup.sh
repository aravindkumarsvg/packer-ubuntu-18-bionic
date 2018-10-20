#!/bin/bash

# Adds the desktop vagrant box
vagrant box add ubuntu-bionic-18-04-desktop ./output/desktop.box --provider virtualbox --force

# Prints the message
echo -e "\nDesktop box added\n"