#!/bin/bash

if [ "$1" == "" ]
then
echo "You forgot an IP address!"
echo "Syntax: ./ipsweep.sh 192.168.x"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" & #Line with grep and delimiters to select the IP address only.
done
fi

#Save ips into ips.txt in shell with:
#./ipsweep.sh <ip> > ips.txt
