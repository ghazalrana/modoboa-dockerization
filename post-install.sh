#!/bin/bash

sed -i '0,/pidfile=/ s/pidfile=/pidfile=\$PIDFILE/' /etc/init.d/opendkim
sed -i '0,/dnsbl.sorbs.net/ s/dnsbl.sorbs.net/#dnsbl.sorbs.net/' /etc/postfix/main.cf
sed -i '0,/postscreen_bare_newline_enable = yes/ s/postscreen_bare_newline_enable = yes/postscreen_bare_newline_enable = no/' /etc/postfix/main.cf
sed -i '0,/postscreen_non_smtp_command_enable = yes/ s/postscreen_non_smtp_command_enable = yes/postscreen_non_smtp_command_enable = no/' /etc/postfix/main.cf
sed -i '0,/postscreen_pipelining_enable = yes/ s/postscreen_pipelining_enable = yes/postscreen_pipelining_enable = no/' /etc/postfix/main.cf
sed -i '0,/mail.localhost/ s/mail.localhost/\*/' /srv/modoboa/instance/instance/settings.py
