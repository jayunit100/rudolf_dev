rudolf_dev
==========

RudolF open source development environment for collaborators.

This is a Vagrant vm setup which automatically sets up a vm with
java and a running mysql instance, on a 64 bit ubuntu box.  

 - Suggested Version is Version 2 (because it has the latest ubuntu, seems to run better). 
 - I could add JDK 7 ? maybe... 
 - TODO: Confirm python version
 





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
