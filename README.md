# Demo content for Goobi workflow development purposes

This repository hold demo data for developers of Goobi workflow. It contains three books with images and a METS files each. 
And the database dump contains sample workflows using these images.

## Attention: Database will be overwritten
Please notice that this database dump will overwrite the data of the existing goobi database to reset the data. 
It expects a running MariaDB or MySQL database on localhost with the name `goobi`, the login `goobi` and the password `goobi`.


## Preparation
If the goobi database does not exist yet, do the following:

```bash
mysql -e "
DROP DATABASE IF EXISTS goobi;
DROP USER IF EXISTS 'goobi'@'localhost';
CREATE DATABASE goobi;
CREATE USER 'goobi'@'localhost' IDENTIFIED BY 'goobi';
GRANT ALL PRIVILEGES ON goobi.* TO 'goobi'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;"
```

Addionally make sure the main folder `/opt/digiverso/` exists and has the correct rights. If the folder is missing do this:

## Execution
Simply call the `setup.sh` script to let Goobi workflow be cloned and enriched with demo data for development.

## More information
More information about how this is used can be found in the Goobi workflow documentation in the chapter for the developers here:
https://docs.goobi.io/goobi-workflow-en/dev/1
