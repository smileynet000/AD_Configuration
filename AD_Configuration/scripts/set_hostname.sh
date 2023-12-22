#! /bin/bash


set $hostv = ""
read -p "Hostname? " hostv

echo setting hostname to \"$hostv\"...

sudo hostnamectl set-hostname $hostv
sudo cp -f /etc/hostname /etc/hostname.old
sudo echo $hostv > /etc/hostname
sudo hostnamectl status
