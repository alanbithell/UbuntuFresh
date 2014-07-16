#!/bin/bash
echo “The ultimate install script for jack audio and QT”
sudo add-apt-repository ppa:kxstudio-team/ppa
sudo apt-get update 
sudo apt-get upgrade 
sudo apt-get install jack2 libjack-jackd2-dev jack-tools ant jackd qjackctl openjdk-6-jdk fftw3 qjackctl qt-sdk qt-creator screen
sudo chmod o+rw /usr/include
#sudo gedit /etc/security/limits.d/audio.conf
sudo echo “@audio - rtprio 95” >> /etc/security/limits.d/audio.conf
sudo echo “@audio - memlock unlimited” >> /etc/security/limits.d/audio.conf
sudo adduser $USER audio
