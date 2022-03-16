#!/bin/bash

#
# script_createSymLink.sh
# script called by Goobi to link processes into user home directories
#
# intranda GmbH
#

# create/move ocr directory?
USE_OCR=0

# first argument: source directory
# second argument: name of link
# third argument: user name
SOURCEDIR="$1"
LINKNAME="$2"
USER="$3"

echo $SOURCEDIR
echo $LINKNAME

ln -s "$SOURCEDIR" "$LINKNAME"
#cp -r "$SOURCEDIR" "$LINKNAME"

#sudo /bin/chown -R "$USER" "$SOURCEDIR" 

