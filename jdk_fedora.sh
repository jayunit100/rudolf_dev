#
# Shell script to install Sun Java, MySQL Server, Ruby, Make, Curl, Git, ZLib, RVM
# on Ubuntu 12.04 LTS OS
#
# Script below installs Sun Java JDK 7 from the Repo

echo "Installing CURL"
sudo yum install curl

echo "Installing Sun Java JDK 7..."
sudo rpm -ivh jdk-7u9-linux-x64.rpm.rpm
echo "Sun Java Installation Done."
echo ""
echo "Setting the JAVA path to the environment variable..."
echo "export PATH=$PATH:/usr/java/jdk1.7.0_09" >> $HOME/.bashrc
echo "Done."
echo ""
