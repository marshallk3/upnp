# upnp
A short script that allows users to setup DDNS and UPnP on their Linux machine

In order to run the script you will need to install curl and miniupnpc
Run the following command:

sudo apt install miniupnpc curl -y

Run:

 sudo crontab -e

and add the following line to run the script every 15 minutes:

  */15 * * * * /home/files/upnp.sh

Run your command in the background while the machine continues starting up a task on reboot:

 @reboot  /home/files/upnp.sh & 
