#!/usr/bin/env bash
GOOBIDIR=/opt/digiverso/
GITDIR=~/git

echo; echo "STEP 1: Create folder $GOOBIDIR if it does not exist"
if [[ ! -e $GOOBIDIR ]]; then
    sudo mkdir $GOOBIDIR
    sudo chown $USER: $GOOBIDIR
fi

echo; echo "STEP 2: Download demo content if not available already"
rm -rf ${GOOBIDIR}goobi
[ ! -f ${GOOBIDIR}workflow.zip ] && wget -q --show-progress https://github.com/intranda/goobi-dev-data/releases/latest/download/workflow.zip -O ${GOOBIDIR}workflow.zip

echo; echo "STEP 3: Unzip demo content"
unzip -q ${GOOBIDIR}workflow.zip -d ${GOOBIDIR}goobi

echo; echo "STEP 4: Create database if not exists already"
if ! mysql -u goobi -pgoobi -e "USE goobi;" 2>/dev/null; then
    echo "Datenbank existiert nicht, erstelle sie..."
    mysql -e "
    DROP DATABASE IF EXISTS goobi;
    DROP USER IF EXISTS 'goobi'@'localhost';
    CREATE DATABASE goobi;
    CREATE USER 'goobi'@'localhost' IDENTIFIED BY 'goobi';
    GRANT ALL PRIVILEGES ON goobi.* TO 'goobi'@'localhost' WITH GRANT OPTION;
    FLUSH PRIVILEGES;"
fi

echo; echo "STEP 5: Drop all tables from the database and insert the dump"
TEMP_FILE_PATH='./drop_all_tables.sql'
echo "SET FOREIGN_KEY_CHECKS = 0;" > $TEMP_FILE_PATH
( mysqldump --add-drop-table --no-data -u goobi -pgoobi goobi | grep 'DROP TABLE' ) >> $TEMP_FILE_PATH
echo "SET FOREIGN_KEY_CHECKS = 1;" >> $TEMP_FILE_PATH
mysql -u goobi -pgoobi goobi < $TEMP_FILE_PATH
rm -f $TEMP_FILE_PATH
mysql -u goobi -pgoobi goobi -e "SOURCE ${GOOBIDIR}goobi/install/dump.sql"

echo; echo "STEP 6: Download of ruleset, scripts and docket files from install folder of Goobi workflow"
GHDIR=https://raw.githubusercontent.com/intranda/goobi-workflow/master/install/
wget  -q --show-progress ${GHDIR}rulesets/ruleset.xml -O ${GOOBIDIR}goobi/rulesets/ruleset.xml
wget  -q --show-progress ${GHDIR}scripts/script_createDirMeta.sh -O ${GOOBIDIR}goobi/scripts/script_createDirMeta.sh
wget  -q --show-progress ${GHDIR}scripts/script_createDirUserHome.sh -O ${GOOBIDIR}goobi/scripts/script_createDirUserHome.sh
wget  -q --show-progress ${GHDIR}scripts/script_createSymLink.sh -O ${GOOBIDIR}goobi/scripts/script_createSymLink.sh
wget  -q --show-progress ${GHDIR}scripts/script_deleteSymLink.sh -O ${GOOBIDIR}goobi/scripts/script_deleteSymLink.sh
wget  -q --show-progress ${GHDIR}xslt/docket.xsl -O ${GOOBIDIR}goobi/xslt/docket.xsl
wget  -q --show-progress ${GHDIR}xslt/docket_multipage.xsl -O ${GOOBIDIR}goobi/xslt/docket_multipage.xsl
wget  -q --show-progress ${GHDIR}xslt/docket_metadata.xsl -O ${GOOBIDIR}goobi/xslt/docket_metadata.xsl
wget  -q --show-progress ${GHDIR}xslt/config.xml -O ${GOOBIDIR}goobi/xslt/config.xml
wget  -q --show-progress ${GHDIR}xslt/logo.png -O ${GOOBIDIR}goobi/xslt/logo.png
wget  -q --show-progress ${GHDIR}xslt/placeholder.png -O ${GOOBIDIR}goobi/xslt/placeholder.png
wget  -q --show-progress ${GHDIR}xslt/font_OpenSans-Regular.ttf -O ${GOOBIDIR}goobi/xslt/font_OpenSans-Regular.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSans-Semibold.ttf -O ${GOOBIDIR}goobi/xslt/font_OpenSans-Semibold.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSansHebrew-Bold.ttf -O ${GOOBIDIR}goobi/xslt/font_OpenSansHebrew-Bold.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSansHebrew-Regular.ttf -O ${GOOBIDIR}goobi/xslt/font_OpenSansHebrew-Regular.ttf

echo; echo "STEP 7: Download of current plugins from GitHub releases"
wget  -q --show-progress https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin-dashboard-extended-api.jar -O ${GOOBIDIR}goobi/plugins/GUI/plugin-dashboard-extended-api.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin-dashboard-extended-gui.jar -O ${GOOBIDIR}goobi/plugins/GUI/plugin-dashboard-extended-gui.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin-dashboard-extended-lib.jar -O ${GOOBIDIR}goobi/plugins/GUI/plugin-dashboard-extended-lib.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin-dashboard-extended-base.jar -O ${GOOBIDIR}goobi/plugins/dashboard/plugin-dashboard-extended-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-opac-pica/releases/latest/download/plugin-opac-pica-base.jar -O ${GOOBIDIR}goobi/plugins/opac/plugin-opac-pica-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-opac-marc/releases/latest/download/plugin-opac-marc-base.jar -O ${GOOBIDIR}goobi/plugins/opac/plugin-opac-marc-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-rest-intranda/releases/latest/download/plugin-rest-intranda-api.jar -O ${GOOBIDIR}goobi/plugins/GUI/plugin-rest-intranda-api.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-statistics-intranda/releases/latest/download/plugin-statistics-intranda-gui.jar -O ${GOOBIDIR}goobi/plugins/GUI/plugin-statistics-intranda-gui.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-statistics-intranda/releases/latest/download/plugin-statistics-intranda-base.jar -O ${GOOBIDIR}goobi/plugins/statistics/plugin-statistics-intranda-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-fileupload/releases/latest/download/plugin-step-file-upload-gui.jar -O ${GOOBIDIR}goobi/plugins/GUI/plugin-step-file-upload-gui.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-fileupload/releases/latest/download/plugin-step-file-upload-base.jar -O ${GOOBIDIR}goobi/plugins/step/plugin-step-file-upload-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-imageqa/releases/latest/download/plugin-step-imageqa-gui.jar -O ${GOOBIDIR}goobi/plugins/GUI/plugin-step-imageqa-gui.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-imageqa/releases/latest/download/plugin-step-imageqa-base.jar -O ${GOOBIDIR}goobi/plugins/step/plugin-step-imageqa-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-image-converter/releases/latest/download/plugin-step-image-converter-base.jar -O ${GOOBIDIR}goobi/plugins/step/plugin-step-image-converter-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-validation-imagename/releases/latest/download/plugin-validation-imagename-base.jar -O ${GOOBIDIR}goobi/plugins/validation/plugin-validation-imagename-base.jar

echo; echo "STEP 8: Clone git repository."
if [[ -e $GITDIR/goobi-workflow/goobi-workflow-core ]]; then
    echo "Git repository $GITDIR/goobi-workflow/goobi-workflow-core does exist already."
else
    echo "Are you an intranda team member with access to the intranda gitea server? (y/n)"
    read teammember
    if [[ "$teammember" != "y" && "$teammember" != "n" ]]; then
        echo "Wrong answer. Please try again."
        exit 1;
    fi

    cd $GITDIR
    mkdir -p $GITDIR/goobi-workflow
    cd goobi-workflow
    if [[ "$teammember" == "y" ]]; then
        echo "Use Gitea as repository to clone source code"
        git clone --depth 10 git@gitea.intranda.com:goobi-workflow/goobi-workflow-core.git
    else
        echo "Use GitHub as repository to clone source code"
        git clone --depth 10 git@github.com:intranda/goobi-workflow.git goobi-workflow-core
    fi

    echo; echo "STEP 9: Add tomcat context."
    cd goobi-workflow-core
    git switch develop   
    mkdir -p src/main/webapp/META-INF
    cp "${GOOBIDIR}goobi/install/context.xml" "src/main/webapp/META-INF/context.xml"

    echo; echo "STEP 10: Compile application."
    rm src/main/webapp/package-lock.json 
    mvn package
fi 
echo; echo "STEP 11: Development data and workflow-core repository could be setup successfully."