#!/bin/bash
ambari_properties_file="/etc/ambari-server/conf/ambari.properties"

if grep -q server.startup.web.timeout $ambari_properties_file; then
    # SomeString was found.Delete The Line
    sed '/server.startup.web.timeout/d' $ambari_properties_file
    $ambari_properties_file >> server.startup.web.timeout=$1
    
else
    $ambari_properties_file >> server.startup.web.timeout=$1
    
fi
