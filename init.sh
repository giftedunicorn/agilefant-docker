#! /bin/bash

agilefant_conf_path=/usr/local/tomcat/webapps/agilefant/WEB-INF/agilefant.conf
sed -i 's/${AGILE_MYSQL_USER}/'$(echo $AGILE_MYSQL_USER)'/g'  	 $agilefant_conf_path  
sed -i 's/${AGILE_MYSQL_PASSWORD}/'$(echo $AGILE_MYSQL_USER)'/g' $agilefant_conf_path  
sed -i 's/${DB_HOST_NAME}/'$(echo $DB_HOST_NAME)'/g'  	 $agilefant_conf_path

exec "$@"
