#!/bin/bash
ambari_properties_file="/etc/ambari-server/conf/ambari.properties"

if grep -q server.startup.web.timeout $ambari_properties_file; then
    # SomeString was found.Delete The Line
    sed -i '/server.startup.web.timeout/d' $ambari_properties_file
    echo server.startup.web.timeout=$1 >> $ambari_properties_file
    
else
    echo server.startup.web.timeout=$1 >> $ambari_properties_file
    
fi
