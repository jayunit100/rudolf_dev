rudolf_dev
==========

RudolF open source development environment for collaborators.

This is a Vagrant vm setup which automatically sets up a vm with
java and a running mysql instance, on a 64 bit ubuntu box.  


Todo
===========

 - add clojure
 - confirm python version

Also:

 - add other libs like thrift, hadoop, etc... 


Instructions
============

0. Clone this project, cd to it. 

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
