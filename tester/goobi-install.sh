#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  STEP 1: Install needed packages'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
# add jammy for tomcat9
test -e /etc/apt/preferences.d/jammy-updates.pref || cat > /etc/apt/preferences.d/jammy-updates.pref << "EOF"
Package: *
Pin: release a=jammy-updates
Pin-Priority: 60
EOF
add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu/ jammy-updates main universe"

# apt update # add-apt-repository does apt update already
apt install -y unzip git openjdk-17-jdk-headless mariadb-server maven tomcat9  < "/dev/null"

echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  STEP 2: Create aliases'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
cat << "EOF" | sudo tee -a /root/.bash_aliases
alias cata='journalctl -n200 -f -u tomcat9'
alias gl='tail -f -n 333 /opt/digiverso/logs/goobi.log'
EOF

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
sudo chown -R root:tomcat /etc/tomcat9/Catalina
sudo chmod -R g-w /etc/tomcat9/Catalina
# Java 17 for Tomcat9
sed -re 's|^#?(JAVA_HOME=).*|\1/usr/lib/jvm/java-17-openjdk-amd64|' /etc/default/tomcat9 -i
mkdir /var/lib/tomcat
chown tomcat: /var/lib/tomcat
goobi-update.sh true develop
