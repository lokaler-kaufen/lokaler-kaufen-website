#!/bin/bash
# This is a simple deployment script which builds the static sites, uploads them onto the server and sets the right permissions.
if [ -z $1 ]; then
	echo "Usage: deploy.sh username"
	echo "User must be member of the 'deployment'-group"
	exit 1
fi
# we must add the o and g flag, otherwise chown will only match the files(!) in the root of the transfered folder. wtf.
# see: https://serverfault.com/questions/796330/how-do-i-set-destination-permissions-with-rsync-chown-chmod
# we change all file permissions to group writeable and change the group to deployment, so every user in the
# deployment group can overwrite the files deployed by any other user in the deployment group.
hugo && rsync -rogvzO --chown :deployment --chmod=D2775,F664 --delete public/ $1@lokaler.kaufen:/usr/share/nginx/html/lokaler.kaufen
