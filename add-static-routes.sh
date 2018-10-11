#!/bin/bash

#sudo route add -net 192.168.40.0/24 172.10.15.251
#sudo route add -net 192.168.50.0/24 172.10.15.252
#sudo route add -net 192.168.60.0/24 172.10.15.253

# macOS 10.12.6 workaround, replace 'Wi-Fi' with your 'networksetup -listallnetworkservices' entry of choice
# check https://apple.stackexchange.com/questions/268524/unable-to-add-more-than-1-static-route for context

sudo networksetup -setadditionalroutes 'Wi-Fi' 192.168.40.0 255.255.255.0 172.10.15.251 192.168.50.0 255.255.255.0 172.10.15.252 192.168.60.0 255.255.255.0 172.10.15.253;
sudo networksetup -setadditionalroutes 'Thunderbolt Ethernet' 192.168.40.0 255.255.255.0 172.10.15.251 192.168.50.0 255.255.255.0 172.10.15.252 192.168.60.0 255.255.255.0 172.10.15.253;

echo 'additional routes of Wi-Fi'
sudo networksetup -getadditionalroutes 'Wi-Fi'
echo 'additional routes of Thunderbolt Ethernet'
sudo networksetup -getadditionalroutes 'Thunderbolt Ethernet'

