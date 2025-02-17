#!/bin/bash

function install_packages()
{
	echo "--------------------------------------------"
	echo ">            gcc-arm-none-eabi             <"
	echo "--------------------------------------------"
	yes | sudo nala install gcc-arm-none-eabi
	# Bare metal C and C++ compiler for embedded ARM chips using ARM
	# Cortex-A/R/M processors.
	
	echo "--------------------------------------------"
	echo ">              gdb-multiarch               <"
	echo "--------------------------------------------"
	yes | sudo nala install gdb-multiarch
	# GNU Debugger (with support for multiple architectures).
	
	echo "--------------------------------------------"
	echo ">         binutils-arm-none-eabi           <"
	echo "--------------------------------------------"
	yes | sudo nala install binutils-arm-none-eabi
	# GNU assembler, linker and binary utilities for ARM Cortex-R/M processors.
	
	echo "--------------------------------------------"
	echo ">                 openocd                  <"
	echo "--------------------------------------------"
	yes | sudo nala install openocd
	# OpenOCD (Open On-Chip Debugger) is a tool that allows to program and debug
	# STM32 microcontroller.
	
	echo "--------------------------------------------"
	echo ">                  cmake                   <"
	echo "--------------------------------------------"
	yes | sudo nala install cmake
	# OpenOCD (Open On-Chip Debugger) is a tool that allows to program and debug
	# STM32 microcontroller.
	
	echo "--------------------------------------------"
	echo ">               stlink-tools               <"
	echo "--------------------------------------------"
	yes | sudo nala install stlink-tools
	# An open source toolset to program and debug STM32 devices
}

function verify_packages()
{
	echo "--------------------------------------------"
	echo ">            Verifying packages            <"
	echo "--------------------------------------------"

    declare -i error_counter=0

	if [[ $(arm-none-eabi-gcc --version) !=  *"arm-none-eabi-gcc"* ]]; then
		echo "ERROR: the arm-none-eabi-gcc package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(arm-none-eabi-g++ --version) !=  *"arm-none-eabi-g++"* ]]; then
		echo "ERROR: the arm-none-eabi-g++ package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(gdb-multiarch --version) !=  *"GNU gdb"* ]]; then
		echo "ERROR: the gdb-multiarch package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(cmake --version) !=  *"cmake"* ]]; then
		echo "ERROR: the cmake package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(st-info --version) !=  *"v1"* ]]; then
		echo "ERROR: the stlink-tools package was not installed"
		error_counter=error_counter+1
	fi
	
	if [[ $error_counter = 0 ]]; then
        echo "------------------------------------------------"
        echo "                Everything is ok                "
        echo "------------------------------------------------"
	else
	    echo ""
		echo ""
	    echo "ERROR: the number of packages that were not installed: " $error_counter
	    echo ""
		echo ""
	fi
}

install_packages
verify_packages
