#!/bin/bash
echo "     "
echo "     "
echo "               ▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo "            ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo "         ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo "        ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒ "
echo "       ▒▒▒    ░▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒▒▒▒ "
echo "      ▒▒▒▒▒░   ░▒▒▒░    ▒▒▒▒▒▒▒▒▒▒▒▒▒ "
echo "     ▒▒▒▒▒▒▒░    ▒░   ░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
echo "     ▒▒▒▒▒▒▒▒▒       ░▒▒▒▒░  ░░    ▒▒▒"
echo "     ▒▒▒▒▒▒▒▒▒▒     ▒▒▒▒▒▒░    ░░░▒▒▒▒"
echo "     ▒▒▒▒▒▒▒▒▒░     ░▒▒▒▒▒░   ▒▒▒▒▒▒▒▒"
echo "     ▒▒▒▒▒▒▒▒░       ░▒▒▒▒░   ▒▒▒▒▒▒▒▒"
echo "     ▒▒▒▒▒▒▒░   ░▓▒    ▒▒▒░   ▒▒▒▒▒▒▒▒"
echo "      ░░░░░    ▒▓▓▓▒    ░░    ░░░░░░░"
echo "      ░░      ▒▓▓▓▓▓▓░             ░░"
echo "        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
echo "         ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
echo "            ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
echo "              ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
echo "              XMRig Installer"
echo ""
echo"                                  [FAT Warez 2025]"
echo ""
echo "This script will download and build the latest version of XMRig."
echo "XMRig will be downloaded to your home directory and built there."
echo "Your system will be updated and any required packages will be installed." 
echo ""
read -p "Do You want to proceed (y/n) " yn

case $yn in 
	y ) echo "";
		echo "░░▀█▀░█▀█░█▀▀░▀█▀░█▀█░█░░░█░░░▀█▀░█▀█░█▀▀░░"
		echo "░░░█░░█░█░▀▀█░░█░░█▀█░█░░░█░░░░█░░█░█░█░█░░"
		echo "░░▀▀▀░▀░▀░▀▀▀░░▀░░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░░"
		echo "░ ██╗  ██╗███╗   ███╗██████╗ ██╗ ██████╗  ░"
		echo "░ ╚██╗██╔╝████╗ ████║██╔══██╗██║██╔════╝  ░"
		echo "░  ╚███╔╝ ██╔████╔██║██████╔╝██║██║  ███╗ ░"
		echo "░  ██╔██╗ ██║╚██╔╝██║██╔══██╗██║██║   ██║ ░"
		echo "░ ██╔╝ ██╗██║ ╚═╝ ██║██║  ██║██║╚██████╔╝ ░"
		echo "░ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝ ╚═════╝  ░"
		echo "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
		echo ""
		sleep .5;;
	n ) echo "Exiting...";
		sleep 1
		exit;;
	* ) echo "invalid response";
		sleep 1
		exit 1;;
esac

cd
echo "Downloading XMRig to your home directory"
sleep .2
sudo apt install git -y
sleep .2
git clone https://github.com/xmrig/xmrig.git
sleep .2
echo "Downloading/upgrading packages required to proceed"
sleep .2
sudo apt update
sudo apt full-upgrade -y
sudo apt install build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
sudo apt autoremove -y
sleep .2
echo "Building xmrig"
sleep .2
cd
cd xmrig
mkdir build
cd build
cmake ..
sudo make
sleep .2
echo "xmrig is now ready for use"
sleep 1
exit 0
