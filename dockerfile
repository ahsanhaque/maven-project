FROM tomcat:8.0-alpine

LABEL maintainer=”Jenkins Docker War”

ADD *.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“catalina.sh”, “run”]
