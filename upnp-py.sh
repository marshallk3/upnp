#!/bin/bash
#
# Marshall Kaspari
#
# Original files are from Silas S. Brown at Cambridge University in the UK
# http://people.ds.cam.ac.uk/ssb22/setup/upnp.html
# UPnP router command-line control scripts
#
# wget http://people.ds.cam.ac.uk/ssb22/setup/upnp.tgz
#
# This is an script that automates the process explained in Sila's website above
# I do not own any of the material in the .tgz file
# I uploaded the files to my GitHub page just as a backup copy and less traffic to Cambridge’s servers
#----------------------------------------------------------------------------------------------------------------------------------

sudo apt-get update
sudo apt-get install python-miniupnpc

mkdir upnp-py
cd upnp-py/

wget https://github.com/marshallk3/upnp/raw/master/upnp.tgz

tar xvzf upnp.tgz

cp * /usr/local/bin

echo "Files have been copied to /usr/local/bin"
