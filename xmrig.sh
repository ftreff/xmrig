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
echo ""
echo ""
echo "This scrip will download and build the latest version xmrig in your home directory?"
echo ""
read -p "Do You want to proceed with installing XMRig (y/n) " yn

case $yn in 
	y ) echo ok, we will proceed;;
	n ) echo exiting...;
		sleep 1
		exit;;
	* ) echo invalid response;
		sleep 1
		exit 1;;
esac

cd
echo "Downloading xmrig to the home directory"
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
cd && cd xmrig && mkdir build && cd build && cmake .. && sudo make
sleep .2
echo "xmrig is now ready for use"
sleep 1
exit 0
