#!/bin/bash
prefix=$1
port=$2
hosts=$(seq 1 254)
echo "host,  port"
for host in $(echo $hosts); do
    timeout .1 bash -c "echo >/dev/tcp/$prefix$host/$port" 2>/dev/null &&
    echo $1$host"  "$2
done
