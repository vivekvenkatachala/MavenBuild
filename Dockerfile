FROM tomcat:8
COPY target/java-example.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8085
CMD ["catalina.sh", "run"]
