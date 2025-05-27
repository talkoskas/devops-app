#!/bin/bash

set -e
echo "WORKSPACE: $WORKSPACE"

TOMCAT_DIR="/Users/talkaskas/Tomcat/apache-tomcat-10.0.11/webapps/devops-app"

# Clean previous deployment
rm -rf "$TOMCAT_DIR"
mkdir -p "$TOMCAT_DIR"

# Copy JSP files
cp -v "$WORKSPACE"/*.jsp "$TOMCAT_DIR/"

# Create WEB-INF with valid web.xml
mkdir -p "$TOMCAT_DIR/WEB-INF"
cat <<EOF > "$TOMCAT_DIR/WEB-INF/web.xml"
<web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee
                             http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd"
         version="3.1">
</web-app>
EOF


echo "✅ Deployment complete"
