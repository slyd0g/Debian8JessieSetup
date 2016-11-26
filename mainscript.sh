#!/bin/bash
if [ "$(whoami)" != "root" ] ; then
	echo -e "\e[1;31mExcuse me, please run this as root.\e[0m"
	echo -e "\e[1;31mYou can do this by running "\"su"\" and then providing the root password you created during install.\e[0m"
	echo -e "\e[1;31mExiting in 3 .. 2 .. 1\e[0m"
	exit	
fi


echo -e "\e[1;31mWe will begin your install!\e[0m"
echo

apt-get install sudo
echo -e "\e[1;31msudo download complete\e[0m"
echo

echo -n -e "\e[1;31mWe will now add a new user, please give a username (if you already have a user, type your username to give sudo privileges): \e[0m"
read username
adduser $username
echo

echo -e "\e[1;31mGranting your new user sudo privileges\e[0m"
usermod -aG sudo $username
echo -e "\e[1;31msudo privileges have been granted!\e[0m"
echo

echo -e "\e[1;31mWe will now add "\"contrib"\" and "\"non-free"\" repositories to the source list.\e[0m"
cd /etc/apt
sed -i '/main/ s/$/ contrib/' sources.list
sed -i '/main/ s/$/ non-free/' sources.list
echo -e "\e[1;31m/etc/apt/sources.list has been updated!\e[0m"
echo

echo -e "\e[1;31mWe will now update our system!\e[0m"
apt-get update
echo -e "\e[1;31mSystem is now updated as of: $(date '+%m/%d/%Y %H:%M:%S')\e[0m"
echo

echo -e "\e[1;31mWe will now install wi-fi drivers for Intel Wireless cards\e[0m"
apt-get install firmware-iwlwifi
apt-get install firmware-b43-installer
apt-get install network-manager-gnome
modprobe -r iwlwifi
modprobe iwlwifi
echo -e "\e[1;31mWireless drivers sucessfully installed and ready for configuration\e[0m"
echo
