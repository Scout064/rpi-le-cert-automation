#!bin/bash
#run renew hooks for Certbot
sudo certbot renew
#remove existing Certificates in export Location
sudo rm /Path/to/cert/cert.p12
#copy over needed Certificate from LE Live folder
sudo cp /etc/letsencrypt/live/fqdn.domain.com/cert.xxx /Path/to/cert/
#Convert, Password-Protect and copy over Certificate (if needed)
#sudo openssl pkcs12 -export -passout pass:'Password' -out /Path/to/cert/cert.p12 -inkey /etc/letsencrypt/live/fqdn.domain.com/fullchain.pem -in /etc/letsencrypt/live/fqdn.domain.com/cert.pem
#set Permissions to cert folder
#propably needs changing if rpi is public :P
sudo chmod 777 -R /Path/to/cert
sudo chown -R username:usergroup /Path/to/cert/*
#execute send_cert.sh
/Path/to/send_cert.sh
