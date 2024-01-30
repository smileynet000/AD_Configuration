#! /bin/bash


echo Install packages needed...
apt install samba-common samba winbind libnss-winbind libpam-winbind krb5-user adcli packagekit
sleep 11
echo

echo Set hostname...
set_hostname.sh
sleep 11
echo


echo Copy configuration files...
sudo cp -f /etc/hosts /etc/hosts.old
sudo cp -f /usr/bin/hosts /etc

sudo cp -f /etc/krb5.conf /etc/krb5.old
sudo cp -f /usr/bin/krb5.conf /etc

sudo cp -f /etc/samba/smb.conf /etc/samba/smb.conf.old
sudo cp -f /usr/bin/smb.conf /etc/samba

sudo cp -f /usr/bin/user.map /etc/samba

sudo cp -f /etc/nsswitch.conf /etc/nsswitch.conf.old
sudo cp -f /usr/bin/nsswitch.conf /etc

sudo cp -f /usr/bin/domain-admins /etc/sudoers.d
sudo cp -f /usr/bin/network_rules /etc/sudoers.d

sleep 11
echo


echo Test smb.conf
testparm
read -s -n 1 -p "Done with testparm. Please press any key..."
sleep 11
echo


echo Fix pam configuration...
sudo pam-auth-update
sleep 11
echo


echo Join domain smiley000.local...
sudo net ads join smiley000.local -U Administrator
sleep 11
echo


echo Restart samba...
sudo systemctl restart smbd nmbd winbind
sleep 11
echo


echo Test Administrator user in AD...
kinit Administrator
klist
kdestroy

echo
id Administrator@smiley000.local
sleep 11
echo


echo Rebooting in 1 minute...
read -s -n 1 -p "Please run, 'sudo join-domain2.sh', after reboot..."
echo
shutdown -r +1 "Rebooting for AD logon domain join."
echo


echo
echo
