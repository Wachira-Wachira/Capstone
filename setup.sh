
#!/bin/bash
sudo apt-get update
sudo apt-get -y install postgresql
sudo service postgresql start
sudo -u postgres psql -c"create user mob_db_user with encrypted password 'mob_db_pass';"
sudo service postgresql restart
sudo useradd -m mob_app_usr

sudo apt update
sudo apt install python3-pip
pip install virtualenv
sudo apt install python3.8-venv
python3 -m venv my project-env 
sudo source env/bin/activate 
python3 -m pip install requests 
sudo -u postgres psql -c"create database mobalytics owner mob_db_user;"
