# Installer and demo content for Goobi workflow and Goobi viewer developers

This repository holds simplified installers for developers of Goobi workflow and Goobi viewer. It contains three books with images and a METS files each for Goobi workflow. 

## Attention: Database will be overwritten
Please notice that this database dump of Goobi workflow will overwrite the data of the existing goobi database to reset the data. 
It expects a running MariaDB server.


## Setup of Goobi workflow
Simply run this command to setup Goobi workflow development environment:

```bash
curl -s -O "https://raw.githubusercontent.com/intranda/goobi-dev-data/main/workflow.sh"
chmod +x workflow.sh
./workflow.sh
```

## Setup of Goobi viewer
Simply run this command to setup Goobi viewer development environment:

```bash
curl -s -O "https://raw.githubusercontent.com/intranda/goobi-dev-data/main/viewer.sh"
chmod +x viewer.sh
./viewer.sh
```

## More information
More information about how this is used can be found in the Goobi workflow documentation in the chapter for the developers here:
https://docs.goobi.io/goobi-workflow-en/dev/1
