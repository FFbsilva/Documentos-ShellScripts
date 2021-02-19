#!/bin/bash

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

file=/home/felipe/Documentos/ShellScripts/soul.list

writeLines $file
#sudo apt-get update -y
