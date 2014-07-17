#!/bin/bash
echo “The ultimate install script for jack audio and QT”
sudo add-apt-repository ppa:kxstudio-team/ppa
sudo apt-get update 
sudo apt-get upgrade 
sudo apt-get install jack2 
sudo apt-get install libjack-jackd2-dev  
sudo apt-get install jack-tools  
sudo apt-get install ant 
sudo apt-get install jackd 
sudo apt-get install qjackctl 
sudo apt-get install openjdk-6-jdk 
sudo apt-get install fftw3 
sudo apt-get install qt-sdk 
sudo apt-get install qt-creator 
sudo apt-get install screen
sudo chmod o+rw /usr/include
#sudo gedit /etc/security/limits.d/audio.conf
sudo echo “@audio - rtprio 95” >> /etc/security/limits.d/audio.conf
sudo echo “@audio - memlock unlimited” >> /etc/security/limits.d/audio.conf
sudo adduser $USER audio
