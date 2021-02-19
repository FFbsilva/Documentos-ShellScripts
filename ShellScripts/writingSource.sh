#!/bin/bash


#Run like root users
writeNetworkSet()
{
cat<<EOF> $1

# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback
# The custom configuration.Can be modified
allow-hotplug enp3s0
iface enp3s0 inet static
    address 192.168.1.25
    network 192.168.1.1
    gateway 192.168.1.200
    broadcast 192.168.255.255
    netmask 255.255.0.0
    dns-servers 8.8.8.8 8.8.4.4
EOF
}

writeLines()
{
cat <<EOF> $1
deb http://deb.debian.org/debian buster main contrib non-free
deb-src http://deb.debian.org/debian buster main contrib non-free
#Packages of security non-free
deb http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb-src http://deb.debian.org/debian-security/ buster/updates main contrib non-free
deb http://deb.debian.org/debian buster-updates main contrib non-free
deb-src http://deb.debian.org/debian buster-updates main contrib non-free
EOF
}

file5=/etc/apt/sources.list
file=/etc/network/interfaces

writeLines $file5
writeNetworkSet $file

#sudo apt-get update -y
#sudo apt-get install samba -y
#sudo apt-get install 