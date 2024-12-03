#!/bin/bash


# Check if all configuration files exist
function check_config_files()
{
	echo "--------------------------------------------"
	echo ">   [1/14] Checking configuration files    <"
	echo "--------------------------------------------"

	if [ ! -f ./sources.list ]; then # If file sources.list does not exist ...
		echo "ERROR: sources.list does not exist"
		exit
	fi
	if [ ! -f ./idylla.jpg ]; then # Idylla wallpaper, 1920x1200
		echo "ERROR: idylla.jpg does not exist"
		exit
	fi
	if [ ! -f ./init.vim ]; then
		echo "ERROR: init.vim does not exist"
		exit
	fi
	if [ ! -f ./.tmux.conf ]; then
		echo "----> OK"
	fi
	if [ ! -f ./.gitmessage.txt ]; then
		echo "ERROR: .gitmessage.txt does not exist"
		exit
	fi
	if [ ! -f ./DejaVuSansMNerdFont-Bold.ttf ]; then
		echo "ERROR: DejaVuSansMNerdFont-Bold.ttf does not exist"
		# Download font from: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts
		# can be e.g. DejaVuSansMono. For linux must be *.tff file.
		exit
	fi
	if [ ! -f ./.gitconfig ]; then
		echo ".gitconfig does not exist"
		exit
	fi

	echo "----> OK"
}


# This script was written for Debian 12, check that
function check_distro()
{
	echo "--------------------------------------------"
	echo "> [2/14] Checking the distribution version <"
	echo "--------------------------------------------"

	system_type=$(uname -a)
	if [[ "$system_type" == *"Debian"* ]]; then
		echo "----> OK"
	else
		echo "ERROR: It works only for Debian 12"
		exit
	fi
}


# To execute this script, your account must have an entry in the sudoers file
function check_sudoers()
{
	echo "--------------------------------------------"
	echo ">  [3/14] Checking if user is in sudoers   <"
	echo "--------------------------------------------"

	local prompt
	prompt=$(sudo -nv 2>&1)

    if [ $? -eq 0 ]; then
    return 0
    	#echo "has_sudo_pass_set"
    	echo "----> OK"
    elif echo $prompt | grep -q '^sudo:'; then
    	#echo "has_sudo_needs_pass"
    	echo "----> OK"
    else
		echo "ERROR: User does not have security privileges (can't run sudo)"
		echo "--------------------------------------------"
		echo "--                REMEMBER                --"
		echo "--    Add the user to the sudoers file    --"
		echo "--       1. Log in to root account        --"
		echo "--       2. nano /etc/sudoers             --"
		echo "--       3. Add at the end of file:       --"
		echo "--          <username> ALL=(ALL)  ALL     --"
		echo "--       4. ctrl+o ctrl+x                 --"
		echo "--------------------------------------------"
		exit
    fi
}


# Add entries to repository list
function config_repo_list()
{
	echo "--------------------------------------------"
	echo ">      [4/14] Configuring Apt Sources      <"
	echo "--------------------------------------------"

	if [ -f /etc/apt/sources.list ]; then
		yes | sudo rm /etc/apt/sources.list
		yes | sudo cp ./sources.list /etc/apt
		echo "----> OK"
	else
		echo "ERROR: the /etc/apt/sources.list file does not exist, maybe dir is wrong"
		exit
	fi
}


function check_internet_connection()
{
	echo "--------------------------------------------"
	echo ">   [5/14] Checking internet connection    <"
	echo "--------------------------------------------"

    echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "----> OK"
    else
        echo "ERROR: you are offline"
        exit
    fi
}


function update_system()
{
	echo "--------------------------------------------"
	echo ">          [6/14] Updating System          <"
	echo "--------------------------------------------"

	yes | sudo apt update
	yes | sudo apt upgrade
	echo "----> OK"
}


function install_packages()
{
	echo "--------------------------------------------"
	echo ">        [7/14] Installing packages        <"
	echo "--------------------------------------------"
	echo ""
	echo "--------------------------------------------"
	echo ">                   nala                   <"
	echo "--------------------------------------------"
	yes | sudo apt install nala
	echo "--------------------------------------------"
	echo ">                   curl                   <"
	echo "--------------------------------------------"
	yes | sudo nala install curl
	echo "--------------------------------------------"
	echo ">               gcc-multilib               <"
	echo "--------------------------------------------"
	yes | sudo nala install gcc-multilib
	echo "--------------------------------------------"
	echo ">                   git                    <"
	echo "--------------------------------------------"
	yes | sudo nala install git-all
	echo "--------------------------------------------"
	echo ">               python3-pip                <"
	echo "--------------------------------------------"
	yes | sudo nala install python3-pip
	echo "--------------------------------------------"
	echo ">                   grip                   <"
	echo "--------------------------------------------"
	pip install grip --break-system-packages
	echo "--------------------------------------------"
	echo ">                   tmux                   <"
	echo "--------------------------------------------"
	yes | sudo nala install tmux
	echo "--------------------------------------------"
	echo ">                  neovim                  <"
	echo "--------------------------------------------"
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
	chmod 755 nvim.appimage
	sudo chown root:root nvim.appimage
	sudo mv nvim.appimage /usr/local/bin/nvim
	echo "--------------------------------------------"
	echo ">                   htop                   <"
	echo "--------------------------------------------"
	yes | sudo nala install htop
	echo "--------------------------------------------"
	echo ">                 neofetch                 <"
	echo "--------------------------------------------"
	yes | sudo nala install neofetch
	echo "--------------------------------------------"
	echo ">                   gawk                   <"
	echo "--------------------------------------------"
	yes | sudo nala install gawk
	echo "--------------------------------------------"
	echo ">             build-essential              <"
	echo "--------------------------------------------"
	yes | sudo nala install build-essential
	echo "--------------------------------------------"
	echo ">                   vlc                    <"
	echo "--------------------------------------------"
	yes | sudo nala install vlc
	echo "--------------------------------------------"
	echo ">                  fonts                   <"
	echo "--------------------------------------------"
	yes | sudo nala install fonts-powerline
	echo "--------------------------------------------"
	echo ">                net-tools                 <"
	echo "--------------------------------------------"
	yes | sudo nala install net-tools
	echo "--------------------------------------------"
	echo ">                autoconf                  <"
	echo "--------------------------------------------"
	yes | sudo nala install autoconf
	echo "--------------------------------------------"
	echo ">                automake                  <"
	echo "--------------------------------------------"
	yes | sudo nala install automake
	echo "--------------------------------------------"
	echo ">                 libtool                  <"
	echo "--------------------------------------------"
	yes | sudo nala install libtool
	echo "--------------------------------------------"
	echo ">                intltool                  <"
	echo "--------------------------------------------"
	yes | sudo nala install intltool
	echo "--------------------------------------------"
	echo ">                  lsd                     <"
	echo "--------------------------------------------"
	yes | sudo nala install lsd
}


# Check if paths exist
function check_paths()
{
	echo "--------------------------------------------"
	echo ">          [8/14] Checking paths           <"
	echo "--------------------------------------------"

	if [ ! -d /sbin ]; then
		echo "ERROR: path /sbin does not exist"
		exit
	fi
	if [ ! -d /home/$("whoami")/.local/bin ]; then
	    mkdir /home/$("whoami")/.local/bin
	fi
	if [! -d /usr/local/share/fonts/ ]; then
		echo "ERROR: path /usr/local/share/fonts/ does not exist"
		exit
	fi

	echo "----> OK"
}


# Add to some dirs to path
function add_to_path()
{
	echo "--------------------------------------------"
	echo ">          [9/14] Modifying PATH           <"
	echo "--------------------------------------------"

	if [ -f /home/$("whoami")/.bashrc ]; then
		echo "" >> /home/$("whoami")/.bashrc
		echo "alias ls='lsd'" >> /home/$("whoami")/.bashrc
		echo "export PATH="/sbin:/home/$("whoami")/.local/bin:$PATH"" >> /home/$("whoami")/.bashrc
		echo "----> OK"
	else
		echo "ERROR: the /home/$("whoami")/.bashrc file does not exist, maybe dir is wrong"
		exit
	fi
}


function configure_tmux()
{
	echo "--------------------------------------------"
	echo ">         [10/14] Configuring tmux          <"
	echo "--------------------------------------------"

	cp .tmux.conf /home/$("whoami")
	if [ ! -f /home/$("whoami")/.tmux.conf ]; then
		echo "ERROR: the .tmux.conf file was not copied to /home/"$("whoami")
		exit
	else
		echo "----> OK"
	fi
}


function configure_fonts()
{
	echo "--------------------------------------------"
	echo ">        [11/14] Configuring fonts         <"
	echo "--------------------------------------------"

	sudo cp ./DejaVuSansMNerdFont-Bold.ttf /usr/local/share/fonts/
	if [ ! -f /usr/local/share/fonts/DejaVuSansMNerdFont-Bold.ttf ]; then
		echo "ERROR: Fonts are not in /usr/local/share/fonts/"
		exit
	else
		fc-cache -fv
	fi

	if [ ! -d ~/.fonts ]; then
		mkdir ~/.fonts
	fi

	cp ./DejaVuSansMNerdFont-Bold.ttf ~/.fonts
	if [ ! -f ~/.fonts/DejaVuSansMNerdFont-Bold.ttf ]; then
		echo "ERROR: Fonts are not in ~/.fonts"
		exit
	else
		fc-cache -fv
	fi

	echo "----> OK"
}


function configure_nvim()
{
	echo "--------------------------------------------"
	echo ">        [12/14] Configuring neovim        <"
	echo "--------------------------------------------"

    python3 -m pip install --user --upgrade pynvim --break-system-packages

	if [ ! -d ~/.config/nvim/ ]; then
		mkdir ~/.config/nvim/
	fi

	cp init.vim ~/.config/nvim/

	if [ ! -f ~/.config/nvim/init.vim ]; then
		echo "ERROR: init.vim are not in ~/.config/nvim"
		exit
	else
	    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
		       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	fi

	echo "----> OK"
}


function configure_git()
{
	echo "--------------------------------------------"
	echo ">         [13/14] Configuring git          <"
	echo "--------------------------------------------"

	cp .gitmessage.txt /home/$("whoami")
	cp .gitconfig /home/$("whoami")
	echo "----> OK"
}


function verify_packages()
{
	echo "--------------------------------------------"
	echo ">        [14/14] Verifying packages        <"
	echo "--------------------------------------------"

    declare -i error_counter=0

	if [[ $(dpkg -s nala) !=  *"nala"* ]]; then
		echo "ERROR: the nala package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s git) !=  *"git"* ]]; then
		echo "ERROR: the git package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s python3-pip) !=  *"python3-pip"* ]]; then
		echo "ERROR: the python3-pip package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s python3-pip) !=  *"python3-pip"* ]]; then
		echo "ERROR: the python3-pip package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s tmux) !=  *"tmux"* ]]; then
		echo "ERROR: the tmux package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(nvim --help) !=  *"nvim"* ]]; then
		echo "ERROR: the nvim package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s htop) !=  *"htop"* ]]; then
		echo "ERROR: the htop package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s gcc-multilib) !=  *"gcc-multilib"* ]]; then
		echo "ERROR: the gcc-multilib package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s curl) !=  *"curl"* ]]; then
		echo "ERROR: the curl package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s neofetch) !=  *"neofetch"* ]]; then
		echo "ERROR: the neofetch package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s gawk) !=  *"gawk"* ]]; then
		echo "ERROR: the gawk package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s build-essential) !=  *"build-essential"* ]]; then
		echo "ERROR: the build-essential package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s vlc) !=  *"vlc"* ]]; then
		echo "ERROR: the vlc package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s fonts-powerline) !=  *"fonts-powerline"* ]]; then
		echo "ERROR: the fonts-powerline package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s net-tools) !=  *"net-tools"* ]]; then
		echo "ERROR: the net-tools package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s autoconf) !=  *"autoconf"* ]]; then
		echo "ERROR: the autoconf package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s automake) !=  *"automake"* ]]; then
		echo "ERROR: the automake package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s libtool) !=  *"libtool"* ]]; then
		echo "ERROR: the libtool package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $(dpkg -s lsd) !=  *"lsd"* ]]; then
		echo "ERROR: the intltool package was not installed"
		error_counter=error_counter+1
	fi
	if [[ $error_counter = 0 ]]; then
		echo "----> OK"
		echo ""
		echo ""
        echo "------------------------------------------------"
        echo "   Everything is ok, you can restart computer   "
        echo "                                                "
        echo "    Remember about:                             "
        echo "     - in neoVim execute :PlugInstall           "
        echo "     - reboot using command: /sbin/reboot       "
        echo "------------------------------------------------"
	else
	    echo ""
		echo ""
	    echo "ERROR: the number of packages that were not installed: " $error_counter
	    echo ""
		echo ""
	fi
}


check_config_files
check_distro
check_sudoers
config_repo_list
check_internet_connection
update_system
install_packages
check_paths
add_to_path
configure_tmux
configure_fonts
configure_nvim
configure_git
verify_packages
