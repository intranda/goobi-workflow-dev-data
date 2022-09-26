#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  STEP 1: Install needed packages'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
apt update
apt install -y unzip git openjdk-11-jdk mariadb-server maven tomcat9  < "/dev/null"

echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  STEP 2: Create aliases'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
cat << "EOF" | sudo tee -a /root/.bash_aliases
alias cata='journalctl -n200 -f -u tomcat9'
alias ct='chown tomcat: *'
alias ctr='chown -R tomcat: *'
alias gl='tail -f -n 333 /opt/digiverso/logs/goobi.log'
EOF
source ~/.bashrc

echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  STEP 3: Create folders and database'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
mysql -e "CREATE DATABASE goobi;
USE goobi;
CREATE USER 'goobi'@'localhost' IDENTIFIED BY 'goobi';
GRANT ALL PRIVILEGES ON goobi.* TO 'goobi'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;"
mkdir /opt/digiverso/
mkdir /opt/digiverso/logs/
mkdir /opt/digiverso/git/

echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  STEP 4: Preparation of Tomcat'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
sudo patch /etc/tomcat9/context.xml << "EOF"
@@ -25,7 +25,5 @@
    <WatchedResource>${catalina.base}/conf/web.xml</WatchedResource>

    <!-- Uncomment this to disable session persistence across Tomcat restarts -->
-    <!--
    <Manager pathname="" />
-    -->
</Context>
EOF
sudo SYSTEMD_EDITOR=tee systemctl edit tomcat9 << "EOF"
[Service]
LogsDirectoryMode=755
CacheDirectoryMode=755
ProtectSystem=true
NoNewPrivileges=false
ReadWritePaths=
EOF
sudo systemctl daemon-reload
sed -e "s/PW_SQL_GOOBI/goobi/" << "EOF" | sudo tee /etc/tomcat9/Catalina/localhost/goobi.xml
<?xml version='1.0' encoding='utf-8'?>
<Context>
        <Manager className="org.apache.catalina.session.PersistentManager" saveOnRestart="false">
                <Store className="org.apache.catalina.session.FileStore"/>
        </Manager>

        <Resources>
                <PreResources
                  className="org.apache.catalina.webresources.DirResourceSet"
                  base="/opt/digiverso/goobi/plugins/GUI/"
                  webAppMount="/WEB-INF/lib" />

                <PostResources
                  className="org.apache.catalina.webresources.DirResourceSet"
                  base="/opt/digiverso/goobi/lib/"
                  webAppMount="/WEB-INF/lib" />
        </Resources>


<Resource name="goobi"
          auth="Container"

          factory="org.apache.tomcat.jdbc.pool.DataSourceFactory"
          type="javax.sql.DataSource"

          driverClassName="software.aws.rds.jdbc.mysql.Driver"
          username="goobi"
          password="PW_SQL_GOOBI"
          maxActive="100"
          maxIdle="30"
          minIdle="4"
          maxWait="10000"
          testOnBorrow="true"
          testWhileIdle="true"
          validationQuery="SELECT SQL_NO_CACHE 1"
          removeAbandoned="true"
          removeAbandonedTimeout="600"
          url="jdbc:mysql://localhost/goobi?characterEncoding=UTF-8&amp;autoReconnect=true&amp;autoReconnectForPools=true" />

</Context>
EOF
goobi-update.sh true develop
