sudo apt-get update

# Java

sudo apt-get install --assume-yes openjdk-6-jdk

# MySQL 

INSTALLER_LOG=/var/log/non-interactive-installer.log

installnoninteractive(){
  sudo bash -c "DEBIAN_FRONTEND=noninteractive aptitude install -q -y $* >> $INSTALLER_LOG"
}

installnoninteractive mysql-server

# Leiningen
#if [ ! -r ~/bin/lein ]; then
#    wget -O ~/bin/lein https://github.com/technomancy/leiningen/raw/stable/bin/lein
#    chmod +x ~/bin/lein
#    ~/bin/lein self-install
#fi

# Python 
# Should be already installed


