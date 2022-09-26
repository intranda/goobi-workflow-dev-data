# Installation of Goobi workflow to execcute tests with demo content

## General Notes
The scripts provided here are tested on Ubuntu 20.04 only. Feel free to adapt these and give feedback in case you have issues using these.

## Prepare a system
Make sure you have an Ubuntu system (e.g. 20.04) available and you have the rights to execute `sudo` there. Log into your system and execute the following commands.

## Complete installation of Goobi workflow from the development branch
Simply execute the following commands to install a complete Goobi workflow environment including demo content:

```bash
wget https://raw.githubusercontent.com/intranda/goobi-workflow-dev-data/main/tester/goobi-install.sh
wget https://raw.githubusercontent.com/intranda/goobi-workflow-dev-data/main/tester/goobi-update.sh
wget https://raw.githubusercontent.com/intranda/goobi-workflow-dev-data/main/tester/goobi-cronjob.sh
chmod u+x goobi-*.sh
sudo mv goobi-*.sh /usr/local/bin/
sudo goobi-install.sh 
```

Right after the complete installation your Goobi workflow is available under the following URL:

```
http://YOUR_IP_ADDRESS:8080/goobi
```

## Update your installation
To update your current installation simply call the following command:

```bash
sudo goobi-update.sh 
```

## Install a cron job to automatically update your system
To let the system autoamtically be updated every night at 2:22 simply call the following command:

```bash
sudo goobi-cronjob.sh 
```
