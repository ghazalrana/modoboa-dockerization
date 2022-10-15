#!/bin/bash

#sed -i "0,/mail.localhost/ s/mail.localhost/${DOMAIN}/" /etc/postfix/main.cf
#sed -i "0,/mail.localhost/ s/mail.localhost/${DOMAIN}/" /etc/amavis/conf.d/05-node_id
#sed -i "s/server_name mail.localhost/server_name ${DOMAIN}/g" /etc/nginx/sites-enabled/mail.localhost.conf
#domain=${DOMAIN}
#domain=$(expr match "$domain" '.*\.\(.*\..*\)')
#sed -i "s/server_name autoconfig.localhost/server_name autoconfig.${domain}/g" /etc/nginx/sites-enabled/autoconfig.localhost.conf

services=("cron" "nginx" "postgresql ""uwsgi" "dovecot" "postfix" "amavis" "opendkim" "clamav-daemon")

for service in ${services[@]}; do
service ${service} start
done

tail -f /dev/null

