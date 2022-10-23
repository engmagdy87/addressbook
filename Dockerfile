FROM bitnami/tomcat
COPY target/addressbook-2.0.war /opt/bitnami/tomcat/webapps/addressbook.war