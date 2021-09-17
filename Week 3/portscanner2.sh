#!/bin/bash

hosts=$1
ports=$2
echo "ip,port"
for ip in $(seq 1 254)
do
  for host in "${hosts[@]}"
  do
    for port in "${ports[@]}"
    do
      if echo "$(hostname)" 2>/dev/null > /dev/tcp/"$host.$ip"/"$port"
      then
        echo "$host.$ip","$port"
      fi
    done
  done
done