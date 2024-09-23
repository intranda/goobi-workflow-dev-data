#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  STEP 5: Read reset either from parameter or request user for it'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
if [ $# -eq 0 ];
then
  read -r -p "Reset content in metadata folder and database [false]: " reset
  reset=${reset:-false}
  read -r -p "Which branch to use (e.g. master, develop) [develop]: " branch
  branch=${branch:-develop}
else
  reset=$1;
  branch=$2;
fi

echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  STEP 6: Download demo content if not available already'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
GDIR=/opt/digiverso/

if [ "$reset" = true ];
then
  rm -rf ${GDIR}goobi
  [ ! -f ${GDIR}goobi.zip ] && wget https://github.com/intranda/goobi-workflow-dev-data/releases/latest/download/goobi.zip -O ${GDIR}goobi.zip
  unzip -q ${GDIR}goobi.zip -d ${GDIR}goobi
  mysql -u goobi -pgoobi goobi -e "SOURCE ${GDIR}goobi/db/start.sql"
fi

echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  STEP 7: Download of ruleset, scripts and docket files from install folder of Goobi workflow'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
GHDIR=https://raw.githubusercontent.com/intranda/goobi-workflow/master/install/
wget  -q --show-progress ${GHDIR}rulesets/ruleset.xml -O ${GDIR}goobi/rulesets/ruleset.xml
wget  -q --show-progress ${GHDIR}scripts/script_createDirMeta.sh -O ${GDIR}goobi/scripts/script_createDirMeta.sh
wget  -q --show-progress ${GHDIR}scripts/script_createDirUserHome.sh -O ${GDIR}goobi/scripts/script_createDirUserHome.sh
wget  -q --show-progress ${GHDIR}scripts/script_createSymLink.sh -O ${GDIR}goobi/scripts/script_createSymLink.sh
wget  -q --show-progress ${GHDIR}scripts/script_deleteSymLink.sh -O ${GDIR}goobi/scripts/script_deleteSymLink.sh
wget  -q --show-progress ${GHDIR}xslt/docket.xsl -O ${GDIR}goobi/xslt/docket.xsl
wget  -q --show-progress ${GHDIR}xslt/docket_multipage.xsl -O ${GDIR}goobi/xslt/docket_multipage.xsl
wget  -q --show-progress ${GHDIR}xslt/docket_metadata.xsl -O ${GDIR}goobi/xslt/docket_metadata.xsl
wget  -q --show-progress ${GHDIR}xslt/config.xml -O ${GDIR}goobi/xslt/config.xml
wget  -q --show-progress ${GHDIR}xslt/logo.png -O ${GDIR}goobi/xslt/logo.png
wget  -q --show-progress ${GHDIR}xslt/placeholder.png -O ${GDIR}goobi/xslt/placeholder.png
wget  -q --show-progress ${GHDIR}xslt/font_OpenSans-Regular.ttf -O ${GDIR}goobi/xslt/font_OpenSans-Regular.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSans-Semibold.ttf -O ${GDIR}goobi/xslt/font_OpenSans-Semibold.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSansHebrew-Bold.ttf -O ${GDIR}goobi/xslt/font_OpenSansHebrew-Bold.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSansHebrew-Regular.ttf -O ${GDIR}goobi/xslt/font_OpenSansHebrew-Regular.ttf

echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  STEP 8: Download of current plugins from GitHub releases'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
# Opac
wget --show-progress -qNP ${GDIR}goobi/plugins/opac/ "https://github.com/intranda/goobi-plugin-opac-pica/releases/latest/download/plugin-opac-pica-base.jar"
wget --show-progress -qNP ${GDIR}goobi/plugins/opac/ "https://github.com/intranda/goobi-plugin-opac-marc/releases/latest/download/plugin-opac-marc-base.jar"
# Step: Fileupload
wget --show-progress -qNP ${GDIR}goobi/plugins/GUI/  "https://github.com/intranda/goobi-plugin-step-file-upload/releases/latest/download/plugin-step-file-upload-gui.jar"
wget --show-progress -qNP ${GDIR}goobi/plugins/step/ "https://github.com/intranda/goobi-plugin-step-file-upload/releases/latest/download/plugin-step-file-upload-base.jar"
# Step: ImageQA
wget --show-progress -qNP ${GDIR}goobi/plugins/GUI/  "https://github.com/intranda/goobi-plugin-step-imageqa/releases/latest/download/plugin-step-imageqa-gui.jar"
wget --show-progress -qNP ${GDIR}goobi/plugins/step/ "https://github.com/intranda/goobi-plugin-step-imageqa/releases/latest/download/plugin-step-imageqa-base.jar"
# Dashboard: Extended
wget --show-progress -qNP ${GDIR}goobi/plugins/GUI/       "https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin-dashboard-extended-gui.jar"
wget --show-progress -qNP ${GDIR}goobi/plugins/dashboard/ "https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin-dashboard-extended-base.jar"
# REST: intranda REST
wget --show-progress -qNP ${GDIR}goobi/lib/ "https://github.com/intranda/goobi-plugin-rest-intranda/releases/latest/download/plugin-rest-intranda-api.jar"
# Controlling: intranda default statistics
wget --show-progress -qNP ${GDIR}goobi/plugins/GUI/        "https://github.com/intranda/goobi-plugin-statistics-intranda/releases/latest/download/plugin-statistics-intranda-gui.jar"
wget --show-progress -qNP ${GDIR}goobi/plugins/statistics/ "https://github.com/intranda/goobi-plugin-statistics-intranda/releases/latest/download/plugin-statistics-intranda-base.jar"
wget --show-progress -qNP ${GDIR}goobi/plugins/statistics/ "https://github.com/intranda/goobi-plugin-statistics-intranda/releases/latest/download/statistics_template.pdf"
wget --show-progress -qNP ${GDIR}goobi/plugins/statistics/ "https://github.com/intranda/goobi-plugin-statistics-intranda/releases/latest/download/statistics_template.xlsx"
# extra
wget --show-progress -qNP ${GDIR}goobi/plugins/step/       "https://github.com/intranda/goobi-plugin-step-image-converter/releases/latest/download/plugin-step-image-converter-base.jar"
wget --show-progress -qNP ${GDIR}goobi/plugins/validation/ "https://github.com/intranda/goobi-plugin-validation-imagename/releases/latest/download/plugin-validation-imagename-base.jar"
chown -R tomcat: ${GDIR}

echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  STEP 9: Checkout Goobi workflow source and start it up'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
service tomcat9 stop
cd /opt/digiverso/git/
if test -d goobi-workflow; then
  git config --global --add safe.directory /opt/digiverso/git/goobi-workflow
else
  git clone https://github.com/intranda/goobi-workflow.git goobi-workflow;
fi
cd goobi-workflow
git checkout "$branch"
git pull
# mvn package
mvn -DskipTests=true -Dcheckstyle.skip=true -Dmdep.analyze.skip=true clean package -U
cp target/workflow-core.war /var/lib/tomcat9/webapps/goobi.war
service tomcat9 start

echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
echo '  SCRIPT FINISHED'
echo '+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'
