FROM centos

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.68/bin/apache-tomcat-8.5.68.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.68/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
ADD webapp/target/webapp.war /usr/local/tomcat/webapps/webapp-1.0-SNAPSHOT.war
WORKDIR /opt/tomcat/webapps


EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
