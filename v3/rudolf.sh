############# Just for fun #############
sudo yum update
sudo yum install --assume-yes tree curl make vim



######
TODO : Prompt if you want real java or open jdk, open jdk should work for most cases,
but for hadoop, you want sun.
#######

###SUN JAVA###

sudo yum update
sudo yum install maven2
sudo yum install openjdk-7-jdk
echo "Now you can add lib/open-jdk-.../ to your JAVA_HOME"

############ CLOJURE ####################
sudo wget -qO /usr/local/bin/lein http://github.com/technomancy/leiningen/raw/stable/bin/lein
sudo chmod 755 /usr/local/bin/lein
echo "self install ..."
/usr/local/bin/lein self-install

############ THRIFT #####################
package="thrift"
version="0.7.0"
sudo yum install --assume-yes libboost-dev libevent-dev libtool flex bison g++ automake pkg-config libboost-test-dev
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

############# VW6 ######################

# for yum, run s/yum/yum/g on this script, 
# and run sudo yum install boost-devel  
# also, remove the --assume-yes (its only an yum option).
sudo yum install make --assume-yes
sudo yum install g++ --assume-yes
sudo yum install libboost-all-dev --assume-yes 
sudo yum install unzip --assume-yes
wget -S 'https://github.com/JohnLangford/vowpal_wabbit/zipball/6.0'
mv 6.0 6.0.zip
unzip 6.0.zip
cd JohnLangford-vowpal_wabbit-a29e25d/
echo "making and installing vw now ..."
sudo make install &> vw_log.txt
echo "There are a couple of minor, expected errors in vw 6.0 installation. See the vw_log.txt for them"
echo "done making/installing vw. now copying it"
sudo cp vw /usr/bin/vw6
cd
vw6 --version

########### YIPEEEEE ####################
echo "Done ! Welcome to RudolF !" 

echo "Now make sure to add -- export JAVA_HOME=/usr/lib/jvm/java-6-sun-1.6.0.33/ to your .bashrc file for running ant."




