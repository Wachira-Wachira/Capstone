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


