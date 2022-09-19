#!/bin/bash
# Who.is script bulk scan

if ["$1"==""]
then
    echo "Syntax: ./whois.sh <File-name.txt>"
else for ip in `cat $1`; do
    echo [WHOIS] Scanning: $ip
    `whois $ip >> whois-results.txt`
done
printf "\n[WHOIS] Done scanning. Output saved."
fi