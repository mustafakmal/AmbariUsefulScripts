#!/bin/bash

if grep -q server.startup.web.timeout "/etc/ambari-server/conf/ambari.properties"; then
  # SomeString was found.Delete The Line
  sed '/server.startup.web.timeout/d' /etc/ambari-server/conf/ambari.properties
  /etc/ambari-server/conf/ambari.properties >> server.startup.web.timeout=$1
  
  else
  /etc/ambari-server/conf/ambari.properties >> server.startup.web.timeout=$1
  
fi
