# 
# Shell script to install Sun Java, MySQL Server, Ruby, Make, Curl, Git, ZLib, RVM 
# on Ubuntu 12.04 LTS OS
#
# Script below installs Sun Java JDK 7 from the Repo
echo "Adding Sun Java repository to the apt repository list..."
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo "Done."
echo ""

echo "Installing Sun Java JDK 7..."
sudo apt-get install oracle-java7-installer
echo "Sun Java Installation Done."
echo ""
echo "Setting the JAVA path to the environment variable..."
echo "export PATH=$PATH:/usr/lib/jvm/java-7-oracle" >> $HOME/.bashrc
echo "Done."
echo ""

# Script below installs Curl package
echo "Installing CURL package if not already installed on your system..."
sudo apt-get install curl
echo "CURL Installation done."
echo ""

bash
echo ""

wget http://apache.mirrors.timporter.net/hadoop/common/hadoop-1.0.4/hadoop-1.0.4.tar.gz
sudo tar -xvf hadoop-1.0.4.tar.gz
mv hadoop-1.0.4 hadoop
echo "export JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> $HOME/.bashrc
echo "export HADOOP_HOME=/home/vagrant/hadoop" >> $HOME/.bashrc
echo "export PATH=$PATH:$JAVA_HOME:$HADOOP_HOME/bin" >> $HOME/.bashrc
