#
# Shell script to install Sun Java, MySQL Server, Ruby, Make, Curl, Git, ZLib, RVM
# on Ubuntu 12.04 LTS OS
#
# Script below installs Sun Java JDK 7 from the Repo


echo "Installing Sun Java JDK 7..."
sudo apt-get install oracle-java7-installer
echo "Sun Java Installation Done."
echo ""
echo "Setting the JAVA path to the environment variable..."
echo "export PATH=$PATH:/usr/lib/jvm/java-7-oracle" >> $HOME/.bashrc
echo "Done."
echo ""
