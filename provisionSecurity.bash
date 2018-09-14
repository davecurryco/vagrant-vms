#!/bin/bash -l

# Disable the Firewall

sudo systemctl stop firewalld
sudo systemctl disable firewalld

# Disable SELINUX

sudo sed -i.bak -e s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config
sudo sed -i.bak -e s/SELINUX=permissive/SELINUX=disabled/g /etc/selinux/config
sestatus