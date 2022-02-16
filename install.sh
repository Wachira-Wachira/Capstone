#!/bin/bash
sudo su
passwd -d mob_app_usr
su - mob_app_usr

#clone the repository to home directory
git clone https://github.com/Wachira-Wachira/Capstone.git

#set environment variables
echo 'export DBNAME=mobalytics >> ~/.bashrc
echo 'export DBUSER=mob_db_user >> ~/.bashrc
echo 'export DBPASS=mob_db_pass >> ~/.bashrc
echo 'export DBHOST=localhost >> ~/.bashrc
echo 'export DBPORT=5432 >> ~/.bashrc
#to execute in the current session
.~/.bashrc
exit

#Create a virtual environment and installing application packages
sudo apt update
sudo apt install python3-pip
pip install virtualenv
sudo apt install python3.8-venv
python3 -m venv my project-env
sudo source env/bin/activate
python3 -m pip install requests

#creating migrations
sudo python3 /users/mob_app_usr/manage.py makemigrations
sudo python3 /users/mob_app_usr/manage.py migrate



