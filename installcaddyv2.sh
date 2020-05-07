#!/bin/sh
# To install latest Caddy v2 from officail Caddy Github
# written for FreeNAS , tested on FreeNAS 11.2-U7 and 11.2-U8

## Please change below if you default location is not /usr/local/www
DEFLOC="/usr/local/www"

fetch https://github.com/caddyserver/caddy/releases/download/v2.0.0/caddy_2.0.0_freebsd_amd64.tar.gz -o ${DEFLOC}
echo ""
echo "Caddy tar.gz file downloaded. File at ${DEFLOC}"
tar -xjf ${DEFLOC}/caddy_2.0.0_freebsd_amd64.tar.gz -f ${DEFLOC}
echo "Caddy untar, same location as tar.gz"
echo ""
echo "Below is your caddy version.
.${DEFLOC}/caddy version
echo ""
echo "change caddy permission to make it runable"
chmod 744 ${DEFLOC}/caddy
ehco ""
echo "Make of copy Caddy file to bin, so it run anywhere"
cp ${DEFLOC}/caddy /usr/local/bin
echo ""
echo "Another copy to /usr/local/etc/rc.d  , to make caddy autostart-able"
cp ${DEFLOC}/caddy /usr/local/etc/rc.d
echo ""
echo "add line to sysrc so caddy will autorun when jail fire up , or restart"
echo "manual edit of rc file can by done by editing  /etc/rc.conf"
sysrc caddy_enable="YES"
echo ""
echo "testing fire up caddy for the first time"
service caddy onestart
echo ""
echo "if above message show success, you are in good shape"
echo ""
echo "shutting down caddy. You can start by adding a Caddyfile before file back up the caddy"
echo "don't forget to add file_server in your caddy file as starting v2, it will not be a default"
echo "With v2 Caddy, you no longer restart the service, but adapt your caddyfile configuration"
echo "into current one, and reload to make the change"
echo " Command is # > caddy adapt (if file at current path) "
echo " or  # > caddy adapt --config /path/path/Caddyfile" 
echo ""
echo "More can be found at Caddy Community https://caddy.community/ "
