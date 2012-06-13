rudolf_dev
==========

RudolF open source development environment for collaborators.

This is a Vagrant vm setup which automatically sets up a vm with
java and a running mysql instance, on a 64 bit ubuntu box.  

I will continue to upgrade versions for different reasons, but in general , each version of this vm will have 

1) Clojure

2) Java 6 or 7

3) Python

4) Mysql client + server, running on startup

5) Thrift (7+)

6) VowpallWabbit 

- v2/ 

I built this box to test out some JDK build errors that were stochastic.  By upgrading v1/ to v2/, I found that some file lock jvm errors magically disappeared.  NOTE : For better performance with large java builds - you can add this to your /etc/security/limits.conf file.

vagrant  hard nofile 65535
vagrant  soft nofile 65535


- v1/ 
- 
This box is lucid64 bit.  It has openjdk6, clojure, thrift, vw6, mysql (client+server, ready to use) right out of the box.


Instructions
============

0. Clone this project, cd to it. And cd to a version (preferabbly the latest).

1. Install vagrant / virtual box.

2. do:

    vagrant up
    
This will take a while. 

3. do:

    $ vagrant ssh
    
and try to run some commands :

    $ java -version

    $ mysql --user=root

4. Note that your /vagrant (in the launched box) points to your local directory, and thus, 
you can use this box for MULTIPLE projects, simply by launching vagrant up in a different directory.  Alternatively, you can make this 
your development root - so that your vagrant box "sees" all projects.  
