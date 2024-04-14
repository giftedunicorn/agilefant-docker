NGINX_URL=reg.csphere.cn

mkdir ~/.m2
# get repository from reg.cpshere.cn
curl -fSL http://${NGINX_URL}/agilefant/repository4agilefant.tar.gz  > ~/.m2/repository4agilefant.tar.gz

# untar 
cd ~/.m2
tar zxvf repository4agilefant.tar.gz 
