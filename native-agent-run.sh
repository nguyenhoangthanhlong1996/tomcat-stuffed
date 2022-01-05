#!/bin/bash
java \
    -agentlib:native-image-agent=config-output-dir=tomcat-config\
    -Dcatalina.base=.\
    -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager\
    -Djava.util.logging.config.file=conf/logging.properties\
    -jar target/tomcat-stuffed-1.0.jar