#!/bin/bash

# Driver Setup on Linux, permit for Quartus to access the USB Blaster
function driver_setup()
{
	echo "--------------------------------------------"
	echo ">              Driver setup                <"
	echo "--------------------------------------------"

	if [ ! -f ./51-usbblaster.rules ]; then # Check if file exist
		echo "ERROR: 51-usbblaster.rules does not exist"
		exit
	fi

	if [ ! -d /etc/udev/rules.d ]; then
		echo "ERROR: path /etc/udev/rules.d does not exist"
		exit
	else
		sudo cp 51-usbblaster.rules /etc/udev/rules.d/
	fi

	if [ ! -f /etc/udev/rules.d/51-usbblaster.rules ]; then
		echo "ERROR: the 51-usbblaster.rules file was not copied to /etc/udev/rules.d/"
		exit
	else
		echo "----> OK"
	fi
}


function install_gtkwave()
{
	echo "--------------------------------------------"
	echo ">                 gtkwave                  <"
	echo "--------------------------------------------"
	yes | sudo nala install gtkwave
	
	# Check if gtkwave has been installed
	if [[ $(dpkg -s gtkwave) !=  *"gtkwave"* ]]; then
		echo "ERROR: the gtkwave package was not installed"
	fi
}

install_gtkwave
driver_setup
