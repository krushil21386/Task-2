#!/bin/bash

sudo apt update
sudo apt install ufw -y

sudo ufw default deny incoming 
sudo ufw default allow outgoing

sudo ufw allow ssh
sudo ufw deny 80/tcp
sudo ufw --force enable

sudo ufw status verbose
#! or you can same but in numbered form
sudo ufw status numbered