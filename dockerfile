FROM tomcat:8.0-alpine

ADD /var/lib/jenkins/workspace/build-through-script/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp-1.0-SNAPSHOT.war

EXPOSE 8080

CMD [“catalina.sh”, “run”]
