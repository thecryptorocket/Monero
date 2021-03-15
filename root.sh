#!/bin/bash
sudo iptables -I OUTPUT 3 -d 127.0.0.1/32 -o lo -p tcp -m tcp --dport 9150 --tcp-flags FIN,SYN,RST,ACK SYN -m owner --uid-owner 0 -j ACCEPT
