#!/usr/bin/env bash
DATAFOLDER=/opt/digiverso/
GITFOLDER=~/git

echo; echo "STEP 1: Create folder $DATAFOLDER if it does not exist"
if [[ ! -e $DATAFOLDER ]]; then
    sudo mkdir $DATAFOLDER
    sudo chown $USER: $DATAFOLDER
fi

echo; echo "STEP 2: Download demo content if not available already"
rm -rf ${DATAFOLDER}goobi
[ ! -f ${DATAFOLDER}workflow.zip ] && wget -q --show-progress https://github.com/intranda/goobi-dev-data/releases/latest/download/workflow.zip -O ${DATAFOLDER}workflow.zip

echo; echo "STEP 3: Unzip demo content"
unzip -q ${DATAFOLDER}workflow.zip -d ${DATAFOLDER}goobi

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
mysql -u goobi -pgoobi goobi -e "SOURCE ${DATAFOLDER}goobi/install/dump.sql"

echo; echo "STEP 6: Download of ruleset, scripts and docket files from install folder of Goobi workflow"
GHDIR=https://raw.githubusercontent.com/intranda/goobi-workflow/master/install/
wget  -q --show-progress ${GHDIR}rulesets/ruleset.xml -O ${DATAFOLDER}goobi/rulesets/ruleset.xml
wget  -q --show-progress ${GHDIR}scripts/script_createDirMeta.sh -O ${DATAFOLDER}goobi/scripts/script_createDirMeta.sh
wget  -q --show-progress ${GHDIR}scripts/script_createDirUserHome.sh -O ${DATAFOLDER}goobi/scripts/script_createDirUserHome.sh
wget  -q --show-progress ${GHDIR}scripts/script_createSymLink.sh -O ${DATAFOLDER}goobi/scripts/script_createSymLink.sh
wget  -q --show-progress ${GHDIR}scripts/script_deleteSymLink.sh -O ${DATAFOLDER}goobi/scripts/script_deleteSymLink.sh
wget  -q --show-progress ${GHDIR}xslt/docket.xsl -O ${DATAFOLDER}goobi/xslt/docket.xsl
wget  -q --show-progress ${GHDIR}xslt/docket_multipage.xsl -O ${DATAFOLDER}goobi/xslt/docket_multipage.xsl
wget  -q --show-progress ${GHDIR}xslt/docket_metadata.xsl -O ${DATAFOLDER}goobi/xslt/docket_metadata.xsl
wget  -q --show-progress ${GHDIR}xslt/config.xml -O ${DATAFOLDER}goobi/xslt/config.xml
wget  -q --show-progress ${GHDIR}xslt/logo.png -O ${DATAFOLDER}goobi/xslt/logo.png
wget  -q --show-progress ${GHDIR}xslt/placeholder.png -O ${DATAFOLDER}goobi/xslt/placeholder.png
wget  -q --show-progress ${GHDIR}xslt/font_OpenSans-Regular.ttf -O ${DATAFOLDER}goobi/xslt/font_OpenSans-Regular.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSans-Semibold.ttf -O ${DATAFOLDER}goobi/xslt/font_OpenSans-Semibold.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSansHebrew-Bold.ttf -O ${DATAFOLDER}goobi/xslt/font_OpenSansHebrew-Bold.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSansHebrew-Regular.ttf -O ${DATAFOLDER}goobi/xslt/font_OpenSansHebrew-Regular.ttf

echo; echo "STEP 7: Download of current plugins from GitHub releases"
wget  -q --show-progress https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin-dashboard-extended-api.jar -O ${DATAFOLDER}goobi/plugins/GUI/plugin-dashboard-extended-api.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin-dashboard-extended-gui.jar -O ${DATAFOLDER}goobi/plugins/GUI/plugin-dashboard-extended-gui.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin-dashboard-extended-lib.jar -O ${DATAFOLDER}goobi/plugins/GUI/plugin-dashboard-extended-lib.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin-dashboard-extended-base.jar -O ${DATAFOLDER}goobi/plugins/dashboard/plugin-dashboard-extended-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-opac-pica/releases/latest/download/plugin-opac-pica-base.jar -O ${DATAFOLDER}goobi/plugins/opac/plugin-opac-pica-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-opac-marc/releases/latest/download/plugin-opac-marc-base.jar -O ${DATAFOLDER}goobi/plugins/opac/plugin-opac-marc-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-rest-intranda/releases/latest/download/plugin-rest-intranda-api.jar -O ${DATAFOLDER}goobi/plugins/GUI/plugin-rest-intranda-api.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-statistics-intranda/releases/latest/download/plugin-statistics-intranda-gui.jar -O ${DATAFOLDER}goobi/plugins/GUI/plugin-statistics-intranda-gui.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-statistics-intranda/releases/latest/download/plugin-statistics-intranda-base.jar -O ${DATAFOLDER}goobi/plugins/statistics/plugin-statistics-intranda-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-fileupload/releases/latest/download/plugin-step-file-upload-gui.jar -O ${DATAFOLDER}goobi/plugins/GUI/plugin-step-file-upload-gui.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-fileupload/releases/latest/download/plugin-step-file-upload-base.jar -O ${DATAFOLDER}goobi/plugins/step/plugin-step-file-upload-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-imageqa/releases/latest/download/plugin-step-imageqa-gui.jar -O ${DATAFOLDER}goobi/plugins/GUI/plugin-step-imageqa-gui.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-imageqa/releases/latest/download/plugin-step-imageqa-base.jar -O ${DATAFOLDER}goobi/plugins/step/plugin-step-imageqa-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-image-converter/releases/latest/download/plugin-step-image-converter-base.jar -O ${DATAFOLDER}goobi/plugins/step/plugin-step-image-converter-base.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-validation-imagename/releases/latest/download/plugin-validation-imagename-base.jar -O ${DATAFOLDER}goobi/plugins/validation/plugin-validation-imagename-base.jar

echo; echo "STEP 8: Clone git repository."
if [[ -e $GITFOLDER/goobi-workflow/goobi-workflow-core ]]; then
    echo "Git repository $GITFOLDER/goobi-workflow/goobi-workflow-core does exist already."
else
    echo "Are you an intranda team member with access to the intranda gitea server? (y/n)"
    read teammember
    if [[ "$teammember" != "y" && "$teammember" != "n" ]]; then
        echo "Wrong answer. Please try again."
        exit 1;
    fi

    cd $GITFOLDER
    mkdir -p $GITFOLDER/goobi-workflow
    cd goobi-workflow
    if [[ "$teammember" == "y" ]]; then

        echo "Do you want to download all plugin repositories as complete setup? (y/n)"
        read complete
        if [[ "$complete" != "y" && "$complete" != "n" ]]; then
            echo "Wrong answer. Please try again."
            exit 1;
        fi
        if [[ "$complete" == "y" ]]; then
            echo "Use Gitea with all Goobi workflow repositories to clone source code"
            cd ..
            git clone git@gitea.intranda.com:goobi-workflow/goobi-workflow.git
            cd goobi-workflow
            git submodule init
            git submodule update
            git fetch --recurse-submodules -j 10
            git submodule foreach git switch develop
            git submodule foreach git pull
        else
            echo "Use Gitea to clone the workflow-core repository"
            git clone -b develop --depth 10 git@gitea.intranda.com:goobi-workflow/goobi-workflow-core.git workflow-core
        fi
    else
        echo "Use GitHub to clone the workflow-core repository"
        git clone -b develop --depth 10 git@github.com:intranda/goobi-workflow.git workflow-core
    fi

    echo; echo "STEP 9: Add tomcat context."
    cd workflow-core
    mkdir -p src/main/webapp/META-INF
    cp "${DATAFOLDER}goobi/install/context.xml" "src/main/webapp/META-INF/context.xml"

    echo; echo "STEP 10: Compile application."
    rm src/main/webapp/package-lock.json 
    rm -rf src/main/webapp/node_modules
    mvn package
fi 
echo; echo "STEP 11: Development data and workflow-core repository could be setup successfully."