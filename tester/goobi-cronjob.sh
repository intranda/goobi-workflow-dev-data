#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  Create cron job for updates'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
cat > /etc/cron.d/goobi-workflow-update << EOF
SHELL=/bin/bash 
PATH=/sbin:/bin:/usr/sbin:/usr/bin 
MAILTO=root HOME=/  
2 22 * * * root wall -n "Starting Goobi Update"; /usr/local/bin/goobi-update.sh true develop; wall -n "Goobi Update finished";
EOF
