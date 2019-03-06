 FROM jboss/wildfly
 ADD /target/ecommerce-100.war  /opt/jboss/wildfly/standalone/deployments/
 RUN /opt/jboss/wildfly/bin/add-user.sh admin password --silent
 CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-c", "standalone-full.xml", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"] 


