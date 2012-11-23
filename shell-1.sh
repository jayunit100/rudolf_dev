# 
# Shell script to install Sun Java, MySQL Server, Ruby, Make, Curl, Git, ZLib, RVM 
# on Ubuntu 12.04 LTS OS
# Veewee guide Source: https://github.com/jedi4ever/veewee/blob/master/doc/installation.md
#

# Script below installs the Library for adding the Repositories to APT-GET Package
clear
echo "Updating apt Repository..."
sudo apt-get update
echo "Done."
echo "Installing Python Softwares if not already installed..."
sudo apt-get install python-software-properties
sudo apt-get update
echo "Done."
echo ""

# Script below installs Sun Java JDK 7 from the Repo
echo "Adding Sun Java repository to the apt repository list..."
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo "Done."
echo ""
echo "Installing Sun Java JDK 7..."
sudo apt-get install oracle-java7-installer -y
echo "Sun Java Installation Done."
echo ""
echo "Setting the JAVA path to the environment variable..."
echo "export PATH=$PATH:/usr/lib/jvm/java-7-oracle" >> $HOME/.bashrc
echo "Done."
echo ""

# Script below installs Make utility if not already installed
echo "Installing make utility if not already installed on your system..."
sudo apt-get install make
echo "Make utility installation done."
echo ""

# Script below installs Curl package
echo "Installing CURL package if not already installed on your system..."
sudo apt-get install curl
echo "CURL Installation done."
echo ""

# Script below install Git repository package
echo "Installing Git repository package on your system..."
sudo apt-get install git
echo "Git Installation completed"
echo ""

# Script below install Gem Package
echo "Installing Gem Package on your system..."
sudo apt-get install gem
echo "Gem Package installation completed"
echo ""

# Script below install Zlib (for use as library with Ruby)
echo "Installing ZLib package on your system..."
sudo apt-get install zlib1g zlib1g-dev
echo "ZLib installation completed."
echo ""

# Script to get RVM Installer from github using CURL Package
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
source ~/.bash_profile

# Script to install RVM Version 1.9.2 (Latest as of Nov 2012)
echo "Installing RVM version 1.9.2 ..."
rvm install 1.9.2
echo "RVM 1.9.2 installation completed"
echo ""

# Script to clone the Veewee Package from GitHub Repository
echo "Getting (Cloning) the veewee package from GitHub repository..."
git clone https://github.com/jedi4ever/veewee.git
echo "Clone of Veewee Package done."
echo ""

cd veewee

# Script to install bundler package
echo "Installing Gem bundler..."
gem install bundler
echo ""
echo "Installing bundle on your system..."
bundle install
echo "Installation of bundle completed."
cd ..
echo ""

# Script below install RVM (Ruby Version Manager) package
echo "Installing Ruby Version Manager (RVM) Package on your system..."
sudo rvm pkg install zlib --verify-downloads 1
rvm reinstall all --force
echo "Done."
echo "Bye"
echo ""

bash
echo ""