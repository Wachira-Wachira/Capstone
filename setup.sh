<<<<<<< HEAD
#!/bin/bash
=======
#!bin/bash 
>>>>>>> d0195dbe6ab094bcabf28ca835d385aaccbc38e8
sudo apt-get update
sudo apt-get -y install postgresql
sudo service postgresql start
sudo -u postgres psql -c"create user mob_db_user with encrypted password 'mob_db_pass';"
sudo service postgresql restart
<<<<<<< HEAD
sudo useradd mob_app_usr
sudo mkhomedir_helper mob_app_usr

=======
sudo useradd -m mob_app_usr
>>>>>>> d0195dbe6ab094bcabf28ca835d385aaccbc38e8
