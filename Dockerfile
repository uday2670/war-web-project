FROM tomcat:9
ADD  /target/*.war /usr/local/tomcat/webapps/wwp-1.0.0.war

