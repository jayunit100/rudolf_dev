############# Just for fun #############
sudo apt-get update
sudo apt-get install --assume-yes curl make vim

############# Java #####################
sudo apt-get install --assume-yes openjdk-6-jdk ant

############ CLOJURE ####################
sudo wget -qO /usr/local/bin/lein http://github.com/technomancy/leiningen/raw/stable/bin/lein
sudo chmod 755 /usr/local/bin/lein
echo "self install ..."
/usr/local/bin/lein self-install

############ THRIFT #####################
package="thrift"
version="0.7.0"
sudo apt-get install --assume-yes libboost-dev libevent-dev libtool flex bison g++ automake pkg-config libboost-test-dev
cd /tmp 
wget -q http://archive.apache.org/dist/${package}/${version}/${package}-${version}.tar.gz
tar xzf ${package}-${version}.tar.gz
cd ${package}-${version}
chmod 755 configure
./configure 
make 
sudo make install 

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
