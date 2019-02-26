#!/bin/bash
#
# Marshall Kaspari
# DDNS UPnP Updater
#*******************************************

# Log path
#-------------------------------------------
log="/home/files/status.txt"


# DDNS URL to update the IP address
#-------------------------------------------
url="https://freedns.afraid.org/dynamic/update.php?[your DDNS token]"

# Enter comment, port and protocol type
#-------------------------------------------
comment="VPN port open"		# Enter a comment
port="1234"					      # Enter the port number
protocol="UDP"				  	# Enter the protocol name




# Main functions
#-------------------------------------------
ddns=$(curl -ks "$url") #> /dev/null 				   			              	# Update the IP address to the DDNS
upnp=$(upnpc -e '"$comment"' -r "$port" "protocol") #> /dev/null    # Open the UPnP port for access
timestamp=$(date +%Y-%m-%d__%H-%M-%S)                               # Timestamp for the log file

#echo "URL:      $url"
#echo "Comment:  $comment"
#echo "Port:     $port"
#echo "Protocol: $protocol"




# Log the DDNS and UPnP results with a timestamp
#----------------------------------------------------

stats=""	#Clear the variable

stats=$(
echo " "
echo "---------------------------------------------------------"
echo "Ran on $timestamp"
echo "*********************************************************"
echo "DDNS: $ddns"
echo "*********************************************************"
echo "UPNP: $upnp"
echo "---------------------------------------------------------"
echo " "
)

echo "$stats" >> "$log"
