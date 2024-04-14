FROM tomcat:7-jre7-alpine

MAINTAINER alex.liu <shenjian8628@gmail.com>

WORKDIR /usr/local/tomcat/webapps/
COPY agilefant/agilefant.war /usr/local/tomcat/webapps/
COPY init.sh /data/init.sh
#ADD target/agilefant.war /usr/local/tomcat/webapps/
#RUN mkdir -p /usr/local/tomcat/webapps/agilefant
RUN unzip /usr/local/tomcat/webapps/agilefant.war && rm /usr/local/tomcat/webapps/agilefant.war

VOLUME ["/usr/local/tomcat/webapps"]

WORKDIR $CATALINA_HOME

EXPOSE 8080
CMD ["/data/init.sh","catalina.sh", "run"] 
