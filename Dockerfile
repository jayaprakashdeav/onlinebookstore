FROM tomcat:9.0
LABEL maintainer="jayaprakashdeav99@gmail.com"

ADD *.war /usr/local/tomcat/webapps/
ADD *.war /usr/local/tomcat/webapps/ROOT.war
#COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
EXPOSE 8080

