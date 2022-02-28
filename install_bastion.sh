#!/bin/bash

sudo apt update -y

echo "Changing permissions"

sudo chmod 600 *.pem


echo "Installing Git"
sudo apt install git -y