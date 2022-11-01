echo 'STEP 1: Download demo content if not available already'
GDIR=/opt/digiverso/
rm -rf ${GDIR}goobi
[ ! -f ${GDIR}goobi.zip ] && wget https://github.com/intranda/goobi-workflow-dev-data/releases/latest/download/goobi.zip -O ${GDIR}goobi.zip

echo 'STEP 2: Unzip demo content and insert data into the database'
unzip -q ${GDIR}goobi.zip -d ${GDIR}goobi

echo 'STEP 3: Drop all tables from the database and insert the dump'
TEMP_FILE_PATH='./drop_all_tables.sql'
echo "SET FOREIGN_KEY_CHECKS = 0;" > $TEMP_FILE_PATH
( mysqldump --add-drop-table --no-data -u goobi -pgoobi goobi | grep 'DROP TABLE' ) >> $TEMP_FILE_PATH
echo "SET FOREIGN_KEY_CHECKS = 1;" >> $TEMP_FILE_PATH
mysql -u goobi -pgoobi goobi < $TEMP_FILE_PATH
rm -f $TEMP_FILE_PATH
mysql -u goobi -pgoobi goobi -e "SOURCE ${GDIR}goobi/db/start.sql"

echo 'STEP 4: Download of ruleset, scripts and docket files from install folder of Goobi workflow'
GHDIR=https://raw.githubusercontent.com/intranda/goobi-workflow/master/Goobi/install/
wget  -q --show-progress ${GHDIR}rulesets/ruleset.xml -O ${GDIR}goobi/rulesets/ruleset.xml
wget  -q --show-progress ${GHDIR}scripts/script_createDirMeta.sh -O ${GDIR}goobi/scripts/script_createDirMeta.sh
wget  -q --show-progress ${GHDIR}scripts/script_createDirUserHome.sh -O ${GDIR}goobi/scripts/script_createDirUserHome.sh
wget  -q --show-progress ${GHDIR}scripts/script_createSymLink.sh -O ${GDIR}goobi/scripts/script_createSymLink.sh
wget  -q --show-progress ${GHDIR}scripts/script_deleteSymLink.sh -O ${GDIR}goobi/scripts/script_deleteSymLink.sh
wget  -q --show-progress ${GHDIR}xslt/docket.xsl -O ${GDIR}goobi/xslt/docket.xsl
wget  -q --show-progress ${GHDIR}xslt/docket_multipage.xsl -O ${GDIR}goobi/xslt/docket_multipage.xsl
wget  -q --show-progress ${GHDIR}xslt/docket_metadata.xsl -O ${GDIR}goobi/xslt/docket_metadata.xsl
wget  -q --show-progress ${GHDIR}xslt/docket_german.xsl -O ${GDIR}goobi/xslt/docket_german.xsl
wget  -q --show-progress ${GHDIR}xslt/config.xml -O ${GDIR}goobi/xslt/config.xml
wget  -q --show-progress ${GHDIR}xslt/logo.png -O ${GDIR}goobi/xslt/logo.png
wget  -q --show-progress ${GHDIR}xslt/placeholder.png -O ${GDIR}goobi/xslt/placeholder.png
wget  -q --show-progress ${GHDIR}xslt/font_OpenSans-Regular.ttf -O ${GDIR}goobi/xslt/font_OpenSans-Regular.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSans-Semibold.ttf -O ${GDIR}goobi/xslt/font_OpenSans-Semibold.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSansHebrew-Bold.ttf -O ${GDIR}goobi/xslt/font_OpenSansHebrew-Bold.ttf
wget  -q --show-progress ${GHDIR}xslt/font_OpenSansHebrew-Regular.ttf -O ${GDIR}goobi/xslt/font_OpenSansHebrew-Regular.ttf

echo 'STEP 5: Download of current plugins from GitHub releases'
wget  -q --show-progress https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin_intranda_dashboard_extended-GUI.jar -O ${GDIR}goobi/plugins/GUI/plugin_intranda_dashboard_extended-GUI.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-dashboard-extended/releases/latest/download/plugin_intranda_dashboard_extended.jar -O ${GDIR}goobi/plugins/dashboard/plugin_intranda_dashboard_extended.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-opac-pica/releases/latest/download/plugin_intranda_opac_pica.jar -O ${GDIR}goobi/plugins/opac/plugin_intranda_opac_pica.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-opac-marc/releases/latest/download/plugin_intranda_opac_marc.jar -O ${GDIR}goobi/plugins/opac/plugin_intranda_opac_marc.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-rest-intranda/releases/latest/download/plugin_intranda_rest_default.jar -O ${GDIR}goobi/plugins/GUI/plugin_intranda_rest_default.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-statistics-intranda/releases/latest/download/plugin_intranda_statistics-GUI.jar -O ${GDIR}goobi/plugins/GUI/plugin_intranda_statistics-GUI.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-statistics-intranda/releases/latest/download/plugin_intranda_statistics.jar -O ${GDIR}goobi/plugins/statistics/plugin_intranda_statistics.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-fileupload/releases/latest/download/plugin_intranda_step_fileUpload-GUI.jar -O ${GDIR}goobi/plugins/GUI/plugin_intranda_step_fileUpload-GUI.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-fileupload/releases/latest/download/plugin_intranda_step_fileUpload.jar -O ${GDIR}goobi/plugins/step/plugin_intranda_step_fileUpload.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-imageqa/releases/latest/download/plugin_intranda_step_imageQA-GUI.jar -O ${GDIR}goobi/plugins/GUI/plugin_intranda_step_imageQA-GUI.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-imageqa/releases/latest/download/plugin_intranda_step_imageQA.jar -O ${GDIR}goobi/plugins/step/plugin_intranda_step_imageQA.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-step-imageconverter/releases/latest/download/plugin_intranda_step_imageconverter.jar -O ${GDIR}goobi/plugins/step/plugin_intranda_step_imageconverter.jar
wget  -q --show-progress https://github.com/intranda/goobi-plugin-validation-imagename/releases/latest/download/plugin_intranda_validation_imagename.jar -O ${GDIR}goobi/plugins/validation/plugin_intranda_validation_imagename.jar
echo 'STEP 6: Development data downloaded and installed. Reset finished.'
