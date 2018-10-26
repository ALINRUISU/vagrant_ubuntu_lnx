#!/usr/bin/env bash
 
# BEGIN ########################################################################
echo -e "-- ------------------ --\n"
echo -e "-- BEGIN BOOTSTRAPING --\n"
echo -e "-- ------------------ --\n"
 
# VARIABLES ####################################################################    
 
# BOX ##########################################################################
echo -e "-- Updating packages list\n"
apt-get -y update
 
# memcached #########################################################################
echo -e "-- Installing additional packages\n"
apt-get -y install memcached libmemcached-tools

echo -e "-- Installing memcached Service\n"

systemctl enable memcached.service
systemctl start  memcached.service
# END ##########################################################################
echo -e "-- ---------------- --"
echo -e "-- END BOOTSTRAPING --"
echo -e "-- ---------------- --"