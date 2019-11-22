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


#!/bin/bash
# This is a comment


#ur=$(ls /usr/lib/ssl/certs)
#for var in $(ls /usr/lib/ssl/certs)
root=$(openssl version -d)
cut="${root:13:12}"
for var in $(ls $cut/certs)
do
ru=$(openssl x509 -noout -issuer -dates -in $cut/certs/$var)
#echo $ur 
echo $root "ff"
echo -e $var
echo -e $ru
echo -e "  "
done
