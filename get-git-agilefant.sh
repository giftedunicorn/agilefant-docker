NGINX_URL=reg.csphere.cn
#get agilefant source code  from reg.cpshere.cn
curl -fSL http://${NGINX_URL}/agilefant/master.zip  > /data/agilefant-master.zip
apt-get install -y unzip
cd /data/
unzip agilefant-master.zip 

