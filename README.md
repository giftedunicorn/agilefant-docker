#training-agilefant
##项目Docker化
将数据库配置改造引入环境变量

将变量替换脚本copy到镜像中

web容器中war包需提前解压

启动镜像时根据环境变量动态替换参数

###脚本放置目录

webapp/Dockerfile

webapp/docker-compose.yml

webapp/init.sh

