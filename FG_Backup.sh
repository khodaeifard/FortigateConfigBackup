#!/bin/bash
#linux/UNIX

# FortiGates IP address list

SERVERS="Fortigate IP Address"

# SSH User name
USR="readonly"

timestamp=$(date +"%d-%m-%y")

# connect each host
mkdir /Backup_Store/FG_Config_BKP/"$timestamp"
for host in $SERVERS
do
sshpass  scp -P 22 $USR@$host:sys_config /Backup_Store/FG_Config_BKP/$timestamp/"$host".conf
done
echo 'Backup Completed!'
exit

