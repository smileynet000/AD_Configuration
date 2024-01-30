#! /bin/bash


echo Groupmap...
mapgroups-tablet.sh
sleep 11
echo


echo Restart samba...
sudo systemctl restart smbd nmbd winbind
sleep 11
echo


echo Rebooting in 1 minute...
read -s -n 1 -p "Please enable GUI tool logon in logon manager after reboot, then reboot again..."
echo
shutdown -r +1 "Rebooting for AD logon domain join."
echo
