#!/bin/bash
# This is a comment


#ur=$(ls /usr/lib/ssl/certs)
for var in $(ls /usr/lib/ssl/certs)
do
ru=$(openssl x509 -noout -issuer -dates -in /usr/lib/ssl/certs/$var)
#echo $ur 
echo -e $var
echo -e $ru
echo -e "  "
done

