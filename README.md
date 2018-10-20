# Description
  Building Ubuntu Bionic Beaver 18.04 LTS desktop and server vagrant boxes using packer

# Commands
  - Building Ubuntu Bionic Beaver 18.04 LTS desktop
```bash
make build_desktop
```
  - Building Ubuntu Bionic Beaver 18.04 LTS server
```bash
make build_server
```

# Vagrant Cloud

# Details
  - Virtualbox version - 5.1
  - Virtualbox Guest Additions version - 5.2.8_KernelUbuntu r120774

# Issues
  - Please add the following lines in Vagrantfile for ssh keys related error.
```rb
config.ssh.username = "vagrant"
config.ssh.password = "vagrant"
```
  - On starting the vagrant machine, If you're getting Shared folders related error.
    - Use latest vagrant binary
    - install vagrant-vbguest plugin
```bash
vagrant plugin install vagrant-vbguest
```

# References
  - [Ubuntu Bionic Preseed](https://help.ubuntu.com/lts/installation-guide/s390x/apbs04.html)