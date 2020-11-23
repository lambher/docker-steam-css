#!/bin/bash
set -e
trap '' TERM INT HUP

# Ensure CSS is up to date
if [ "$1" == "update" ]; then
	./steamcmd.sh +login anonymous +force_install_dir ./css +app_update 232330 validate +quit
fi

if [ -d /home/steam/htdocs ]; then
	echo "Copying htdocs..."
	mkdir -p /home/steam/htdocs/cstrike
#	cp -fR /home/steam/css/cstrike/maps /home/steam/htdocs/cstrike
#	cp -fR /home/steam/css/cstrike/sound /home/steam/htdocs/cstrike

fi

cd css

#cp /home/steam/htdocs/cstrike/maps/* /home/steam/css/cstrike/maps/
#cp -r /home/steam/htdocs/cstrike/materials/ /home/steam/css/cstrike/

./srcds_run -game cstrike +exec server.cfg +hostname "$CSS_HOSTNAME" +sv_password "$CSS_PASSWORD" +rcon_password "$RCON_PASSWORD" +map cs_belair73
