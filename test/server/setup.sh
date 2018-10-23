#!/bin/bash

# Adds the server vagrant box
vagrant box add ubuntu-bionic-18-04-server ./output/server.box --provider virtualbox --force

# Prints the message
echo -e "\nServer box added\n"