# TinyCA

<b><i> Your very own tiny certificate authority! </i></b>

A tiny project consisting of two bash scripts and two folders that will neatly organize certificates for use in development projects. 

It's fast to setup and pretty straight-forward!

## Requirements

- Linux Environment with a Terminal
- OpenSSL [ sudo apt install openssl ]


## Usage

First clone this repository using git,

```sh
git clone https://github.com/Naushikha/TinyCA.git
cd TinyCA
```

Then follow these steps to create your own certificates,

### 1. Generating your own TinyCA (Tiny Certificate Authority)

```sh
./gen_CA.sh
```
- Fill in the required details.

- If done right, you should be able to see your CA files (key & root certificate) in the 'CA' folder.

### 2. Generating certificate with the TinyCA

```sh
./gen_CERT.sh my-awesome-sitename.com
```
- Give your own site name here to generate a certificate for it.

- If done right, you can find your certificates in a seperate folder with your site name in the 'Sites' folder.

## Examples

Here are some placeholder values to get an idea on what to fill in,

```sh
Country Name (2 letter code) [AU]: LK
State or Province Name (full name) [Some-State]: Western
Locality Name (eg, city) []: Colombo 10
Organization Name (eg, company) [Internet Widgits Pty Ltd]: Awesome Software Pty Ltd
Organizational Unit Name (eg, section) []:
Common Name (e.g. server FQDN or YOUR name) []: www.awesomesoftware.com
Email Address []: info@awesomesoftware.com
```

## Known Issue

I've recently encountered an issue while using this where the certificate isn't trusted by Google Chrome. This can be fixed by swapping in 'IP.1 = $DOMAIN' for 'DNS.1 = $DOMAIN' in the script, and also including in the IPs as domain name + FQDN.

## References

These references were used to build this tiny masterpiece. If you are interested or thirsty for more knowledge, go and check them out. 

1. https://www.digicert.com/kb/ssl-support/openssl-quick-reference-guide.htm
2. https://deliciousbrains.com/ssl-certificate-authority-for-local-https-development/
3. https://florianbrinkmann.com/en/https-virtual-hosts-xampp-4215/
4. https://shellcreeper.com/how-to-create-valid-ssl-in-localhost-for-xampp/