############# Just for fun #############
sudo apt-get update
sudo apt-get install --assume-yes curl
sudo apt-get install --assume-yes make
sudo apt-get install --assume-yes vim

############# Java #####################
sudo apt-get install --assume-yes openjdk-6-jdk
sudo apt-get install --assume-yes ant

############ CLOJURE ####################
cd /usr/local/bin
pwd
sudo wget http://github.com/technomancy/leiningen/raw/stable/bin/lein
ls
echo "chmod 777 lein"
sudo chmod 777 /usr/local/bin/lein
echo "self install ..."
/usr/local/bin/lein self-install

############ THRIFT #####################
sudo apt-get install --assume-yes libboost-dev libevent-dev libtool flex bison g++ automake pkg-config
sudo apt-get install --assume-yes libboost-test-dev 
cd /tmp 
curl http://archive.apache.org/dist/thrift/0.7.0/thrift-0.7.0.tar.gz | tar zx
cd thrift-0.7.0/ 
sudo chmod 777 -R .
./configure 
make 
sudo make install 
which thrift 

############# MySQL ####################
INSTALLER_LOG=/var/log/non-interactive-installer.log
installnoninteractive(){
  sudo bash -c "DEBIAN_FRONTEND=noninteractive aptitude install -q -y $* >> $INSTALLER_LOG"
}
installnoninteractive mysql-server
echo "Now installing clojure via lein"

########### YIPEEEEE ####################
echo "Done ! Welcome to RudolF !"

########### Python ######################
