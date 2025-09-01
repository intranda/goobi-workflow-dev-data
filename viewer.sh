#!/usr/bin/env bash
DATAFOLDER=/opt/digiverso/
GITFOLDER=~/git

echo; echo "STEP 1: Create folder $DATAFOLDER if it does not exist"
if [[ ! -e $DATAFOLDER ]]; then
    sudo mkdir $DATAFOLDER
    sudo chown $USER: $DATAFOLDER
fi

echo; echo "STEP 2: Download folder structure if not available already"
rm -rf ${DATAFOLDER}viewer
[ ! -f ${DATAFOLDER}viewer.zip ] && wget -q --show-progress https://github.com/intranda/goobi-dev-data/releases/latest/download/viewer.zip -O ${DATAFOLDER}viewer.zip

echo; echo "STEP 3: Unzip zip content"
unzip -q ${DATAFOLDER}viewer.zip -d ${DATAFOLDER}viewer
rm ${DATAFOLDER}viewer.zip

echo; echo "STEP 4: Create database if not exists already"
if ! mysql -u viewer -pviewer -e "USE viewer;" 2>/dev/null; then
    echo "Datenbank existiert nicht, erstelle sie..."
    mysql -e "
    DROP DATABASE IF EXISTS viewer;
    DROP USER IF EXISTS 'viewer'@'localhost';
    CREATE DATABASE viewer;
    CREATE USER 'viewer'@'localhost' IDENTIFIED BY 'viewer';
    GRANT ALL PRIVILEGES ON viewer.* TO 'viewer'@'localhost' WITH GRANT OPTION;
    FLUSH PRIVILEGES;"
fi

echo; echo "STEP 5: Drop all tables from the database"
TEMP_FILE_PATH='./drop_all_tables.sql'
echo "SET FOREIGN_KEY_CHECKS = 0;" > $TEMP_FILE_PATH
( mysqldump --add-drop-table --no-data -u goobi -pgoobi goobi | grep 'DROP TABLE' ) >> $TEMP_FILE_PATH
echo "SET FOREIGN_KEY_CHECKS = 1;" >> $TEMP_FILE_PATH
mysql -u viewer -pviewer viewer < $TEMP_FILE_PATH
rm -f $TEMP_FILE_PATH
mysql -u viewer -pviewer viewer -e "SOURCE ${DATAFOLDER}viewer/install/dump.sql"

echo; echo "STEP 6: Clone git repositories"
mkdir -p $GITFOLDER/goobi-viewer
cd $GITFOLDER/goobi-viewer
if [[ -e $GITFOLDER/goobi-viewer/goobi-viewer-core ]]; then
    echo "Git repository $GITFOLDER/goobi-viewer-core does exist already."
else
    git clone --depth 10 git@gitea.intranda.com:goobi-viewer/goobi-viewer-core.git
    #cd goobi-viewer-core/goobi-viewer-core
    #mvn package
fi 

if [[ -e $GITFOLDER/goobi-viewer/goobi-viewer-core-config ]]; then
    echo "Git repository $GITFOLDER/goobi-viewer-core-config does exist already."
else
    git clone --depth 10 git@gitea.intranda.com:goobi-viewer/goobi-viewer-core-config.git
    #cd goobi-viewer-core-config/goobi-viewer-core-config
    #mvn package
fi 

if [[ -e $GITFOLDER/goobi-viewer/goobi-viewer-theme-reference ]]; then
    echo "Git repository $GITFOLDER/goobi-viewer-theme-reference does exist already."
else
    git clone --depth 10 git@gitea.intranda.com:goobi-viewer/goobi-viewer-theme-reference.git
    cd goobi-viewer-theme-reference/goobi-viewer-theme-reference
    mvn package
    cp "${DATAFOLDER}viewer/install/context.xml" "target/viewer/META-INF/context.xml"
fi 

echo; echo "STEP 7: Development data and viewer repositories could be setup successfully."