#!/bin/bash

#Date Created  22/11/2023
#Date Modified 22/11/2023
#Author: Omar AbdelWahab
#E-mail: omarabdelwahabmb@gmail.com

#Description:
#Clear Tomcat Cache


# replace this with Tomcat Location
cd /usr/local/apache-tomcat-6.0.37 

./bin/shutdown.sh 

#Clearing cache
rm -rf  work/Catalina/localhost/* temp/*

./bin/startup.sh


exit 0
