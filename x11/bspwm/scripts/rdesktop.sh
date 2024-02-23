#!/bin/bash

username=""
password=""
ip_lab=""
ip_home=""

host=$1
eval ip="\$ip_$host"

rdesktop -P -K -r clipboard:PRIMARYCLIPBOARD -z -x l -g 200% -u $username -p $password $ip
