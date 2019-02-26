sudo apt-get update
sudo apt-get install python-miniupnpc

mkdir upnp-py
cd upnp-py

wget http://people.ds.cam.ac.uk/ssb22/setup/upnp.tgz

tar xvzf upnp.tgz

cp * /usr/local/bin
