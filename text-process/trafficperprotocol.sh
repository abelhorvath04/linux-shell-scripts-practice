#!/bin/bash

# Process a log file with the fields. Calculate the sum of packet sizes per protocol.
#
# Author: Horváth-Szarka Ábel

tcp_size=0
udp_size=0

while IFS=, read -r timestamp source_ip dest_ip packet_size protocol; do
  if [[ "$protocol" == "TCP" ]]; then
    tcp_size=$((tcp_size + packet_size))
  elif [[ "$protocol" == "UDP" ]]; then
    udp_size=$((udp_size + packet_size))
  fi
done < "$1"

echo "tcp: $tcp_size"
echo "udp: $udp_size"
