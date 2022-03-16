#!/bin/bash

#update system
sudo apt-get update

#install node.js
curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs -y

#Install nginx
sudo apt-get install nginx -y

#create and start the react application
npx create-react-app test-react
cd test-react
npm start

#create a production build for the app
npm run build

#copy the build to the directory
sudo cp -r /home/ubuntu/test-react/build/* /var/www/html
sudo rm -rf index.nginx.debian.html

#reload nginx 
sudo systemctl restart nginx
