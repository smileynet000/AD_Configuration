#! /bin/bash


if [ -f /etc/settings/flags/versions/linux_mint-21.3 ]; then
 join-domain_linux-mint_21.3.sh
else
 join-domain_linux-mint_21.1.sh
fi
