#! /bin/sh


echo Making standard groups...
echo
echo

echo Unix groups...
sudo groupadd smb_domadm
sudo groupadd smb_domguests
sudo groupadd smb_domusers


sudo groupadd smb_standard_users
sudo groupadd smb_standard_users_r
sudo groupadd smb_machine
sudo groupadd smb_human
sudo groupadd smb_special

sudo groupadd smb_sguests
sudo groupadd smb_internet_users
sudo groupadd smb_internet_usersl2
sudo groupadd smb_vpn_users
sudo groupadd smb_normal_users
sudo groupadd smb_admins
sudo groupadd smb_adminsl2
sudo groupadd smb_adminsl3
sudo groupadd smb_adminsl4

sudo groupadd smb_jsguests
sudo groupadd smb_jinternet_users
sudo groupadd smb_jinternet_usersl2
sudo groupadd jsmb_vpn_users
sudo groupadd smb_jnormal_users
sudo groupadd smb_jadmins
sudo groupadd smb_jadminsl2
sudo groupadd smb_jadminsl3
sudo groupadd smb_jadminsl4

#sudo groupadd smb_vboxusers

echo


echo Samba maps...

sudo net groupmap add ntgroup="Domain Admins" unixgroup="smb_domadm" type="domain"
sudo net groupmap add ntgroup="Domain Guests" unixgroup="smb_domguests" type="domain"
sudo net groupmap add ntgroup="Domain Users" unixgroup="smb_domusers" type="domain"

sudo net groupmap add ntgroup="standard_users" unixgroup="smb_standard_users" type="domain"
sudo net groupmap add ntgroup="standard_users_r" unixgroup="smb_standard_users_r" type="domain"
sudo net groupmap add ntgroup="machine" unixgroup="smb_machine" type="domain"
sudo net groupmap add ntgroup="human" unixgroup="smb_human" type="domain"

sudo net groupmap add ntgroup="sguests" unixgroup="smb_sguests" type="domain"
sudo net groupmap add ntgroup="internet_users" unixgroup="smb_internet_users" type="domain"
sudo net groupmap add ntgroup="internet_usersl2" unixgroup="smb_internet_usersl2" type="domain"
sudo net groupmap add ntgroup="vpn_users" unixgroup="smb_vpn_users" type="domain"
sudo net groupmap add ntgroup="normal_users" unixgroup="smb_normal_users" type="domain"
sudo net groupmap add ntgroup="admins" unixgroup="smb_admins" type="domain"
sudo net groupmap add ntgroup="adminsl2" unixgroup="smb_adminsl2" type="domain"
sudo net groupmap add ntgroup="adminsl3" unixgroup="smb_adminsl3" type="domain"
sudo net groupmap add ntgroup="adminsl4" unixgroup="smb_adminsl4" type="domain"

sudo net groupmap add ntgroup="jsguests" unixgroup="smb_jsguests" type="domain"
sudo net groupmap add ntgroup="jinternet_users" unixgroup="smb_jinternet_users" type="domain"
sudo net groupmap add ntgroup="jinternet_usersl2" unixgroup="smb_jinternet_usersl2" type="domain"
sudo net groupmap add ntgroup="jvpn_users" unixgroup="smb_jvpn_users" type="domain"
sudo net groupmap add ntgroup="jnormal_users" unixgroup="smb_jnormal_users" type="domain"
sudo net groupmap add ntgroup="jadmins" unixgroup="smb_jadmins" type="domain"
sudo net groupmap add ntgroup="jadminsl2" unixgroup="smb_jadminsl2" type="domain"
sudo net groupmap add ntgroup="jadminsl3" unixgroup="smb_jadminsl3" type="domain"
sudo net groupmap add ntgroup="jadminsl4" unixgroup="smb_jadminsl4" type="domain"

#sudo net groupmap add ntgroup="vboxusers" unixgroup="vboxusers" type="domain"

echo
