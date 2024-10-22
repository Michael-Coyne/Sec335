#!/bin/bash
network=$1
dnsserver=$2
range=$(seq 1 254)
echo "dns resolution for $network using $dnsserver "
for host in $(echo $range); do
    nslookup $network$host $dnsserver | grep "name ="
done
