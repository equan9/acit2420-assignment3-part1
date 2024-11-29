#!/bin/bash 

USERNAME="webgen"
USERHOME="/var/lib/webgen"

if id "$USERNAME" &>/dev/null; then
	echo "$USERNAME already exists."
else
	sudo useradd -m -d "$USERHOME" -S /usr/sbin/nologin "$USERNAME"
	echo "$USERNAME and $USERHOME have been created."
fi

sudo chown -R "$USERNAME":"$USERNAME" "$USERHOME"

sudo chmod 700 "$USERHOME"

echo "Ownership and permissions have been set for $USERHOME." 
