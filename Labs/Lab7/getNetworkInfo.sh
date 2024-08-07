#!/bin/bash

# dynamic or static IPv4
ipType=`ip a | grep -i dynamic`
if [[ $ipType =~ dynamic ]]; then
	ipType="Dynamic"
else
	ipType="Static"
fi

# current IPv4
ipLiteral=`ip a | awk '/ens160$/ {print $2}'`
echo $ipType "IPv4 address:" $ipLiteral

# MAC address
macAddress=`ip a | grep link/ether | awk 'FNR==1 {print $2}'`
echo "MAC address: $macAddress"

# gateway router
ipGateway=`ip r | awk '/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/ && FNR==1 {print $3}'`
echo "Gateway router: $ipGateway"

# DNS server
dnsServ=`cat /etc/resolv.conf | awk '/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/ {print $2}'`
echo "DNS Server: $dnsServ"

# DNS domain
dnsDom=`cat /etc/resolv.conf | awk '/search/ {print $2 " " $3}'`
echo "DNS domain: $dnsDom"

# NIC speed
speed=`/sbin/ethtool ens160 | awk '/Speed/ {print $2}'`
echo "NIC speed:  $speed"

# NIC duplex
duplex=`/sbin/ethtool ens160 | awk '/Duplex/ {print $2}'`
echo "NIC duplex: $duplex"
