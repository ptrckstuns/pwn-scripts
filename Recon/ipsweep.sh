#!/bin/bash
# Ping sweep for Reconnaissance on Network VAPT

if ["$1"==""]
then
    echo "You forgot to input IP address!"
    echo "Syntax: ./ipsweep.sh 192.168.1"
    echo "./ipsweep.sh 192.168.1 > extracted-ips.txt"
else for ip in `seq 1 254`; do
    ping -c $1.$ip | grep "64 bytes" | cut- -d " " -f 4 &
done
    printf "Network ping scan done."
fi