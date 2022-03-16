#!/bin/bash

# erste Variable: Linkname
Linkname="$1"

echo $Linkname

chown -R tomcat7:tomcat7 $Linkname
rm "$Linkname"
