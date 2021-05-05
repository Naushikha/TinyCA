#!/bin/sh

# https://deliciousbrains.com/ssl-certificate-authority-for-local-https-development/

cd ./CA
# Generate the private key for the CA
openssl genrsa -des3 -out TinyCA.key 2048
echo "\nCreated private key 'TinyCA.key' for TinyCA.\n"

# Generate the root cerficate for the CA
openssl req -x509 -new -nodes -key TinyCA.key -sha256 -days 1825 -out TinyCA.pem
echo "\nCreated root certificate 'TinyCA.pem' for TinyCA."

echo "\nYour TinyCA has been successfully created!"
echo "\nFiles generated for TinyCA (./CA/);"
ls
echo "\n**Install 'TinyCA.pem' root certificate in your browsers to authorize it."