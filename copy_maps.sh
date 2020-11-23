cp /home/steam/htdocs/cstrike/maps/* /home/steam/css/cstrike/maps/
cp -r /home/steam/htdocs/cstrike/materials/ /home/steam/css/cstrike/

./srcds_run -game cstrike +exec server.cfg +hostname "$CSS_HOSTNAME" +sv_password "$CSS_PASSWORD" +rcon_password "$RCON_PASSWORD" +map cs_belair73
