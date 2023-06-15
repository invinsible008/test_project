FROM tomcat
RUN sed -i '/<\/tomcat-users>/ i\<user username="becky" password="Montage9" roles="admin-gui,manager-gui,manager-script"/>' /usr/local/tomcat/conf/tomcat-users.xml
COPY web.war /usr/local/tomcat/webapps/web.war
