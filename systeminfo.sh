#!/usr/bin/env bash
# A script to output a brief summary of system information
#  - df -h
#  Filesystem      Size  Used Avail Use% Mounted on
#  rootfs          223G  167G   57G  75% /
#  none            223G  167G   57G  75% /dev
#  none            223G  167G   57G  75% /run
#  none            223G  167G   57G  75% /run/lock
#  none            223G  167G   57G  75% /run/shm
#  none            223G  167G   57G  75% /run/user
#  tmpfs           223G  167G   57G  75% /sys/fs/cgroup
#  - df -h /
#  Filesystem      Size  Used Avail Use% Mounted on
#  rootfs          223G  167G   57G  75% /
#  - df -h / | awk '{print $4}'
#  Avail
#  57G
#  - df -h / | awk 'NR==2 {print $4}'
#  57G

freespace=$(df -h / | awk 'NR==2 {print $4}')

#  - free -h
#                total        used        free      shared  buff/cache   available
#  Mem:            15G        5.0G         10G         17M        223M         10G
#  Swap:           27G         38M         27G
#  - free -h | awk 'NR==2 {print $4}'
#  10G

freemem=$(free -h | awk 'NR==2 {print $4}')

greentext="\033[32m"
bold="\033[1m"
normal="\033[0m"

printf -v logdate "%(%Y-%m-%d)T"

#  - echo $HOSTNAME
#  DESKTOP-NIM1BCV
#  - uname -r
#  4.4.0-19041-Microsoft
#  - echo $BASH_VERSION
#  4.4.19(1)-release
#  - ls | wc -l
#  19

echo -e $bold"Quick system report for "$greentext"$HOSTNAME"$normal
printf "\tKernel Release:\t%s\n" $(uname -r)
printf "\tBash Version:\t%s\n" $BASH_VERSION
printf "\tFree Storage:\t%s\n" $freespace
printf "\tFree Memory:\t%s\n" $freemem
printf "\tFiles in pwd:\t%s\n" $(ls | wc -l)
printf "\tGenerated on:\t%s\n" $logdate
