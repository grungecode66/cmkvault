#!/bin/bash

# on ubuntu

MY_IP="$(ip addr show eth0 | grep inet | awk '{print $2; }' | sed 's/\/.*$//' | head -1)"

# on RHEL

# MY_IP="$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')"


echo $MY_IP
