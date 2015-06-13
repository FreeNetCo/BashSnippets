#!/bin/bash


# Basic system info
hostname=$(hostname)
uptime=$(uptime | awk {'print $1'})
# need to modify the following line to remove Bcast from
# the end of the string
wlan0=$(ifconfig wlan0 | grep 'inet addr' | cut -d : -f 2)
ip=${wlan0/Bcast/}

# User info
users=$(users)
echo $users > /tmp/users.log
user_count=$(wc /tmp/users.log | awk {'print $2'})

# Log user's processes
logfile="/tmp/processes.log"
processes=$(ps ux > $logfile)

printf "%s has an uptime of %s and an IP address of %s\n" $hostname $uptime $ip
echo
printf "You are currently logged in as %s\n" $USER
echo
printf "There are %s other users logged on currently:\n" $user_count
for i in $user_count;
	do echo $users;
done;
echo
printf "You can find more system information in %s\n" $logfile
tail $logfile
