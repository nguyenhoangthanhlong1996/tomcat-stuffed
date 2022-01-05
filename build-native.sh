#!/bin/bash
native-image --no-server --no-fallback\
        --allow-incomplete-classpath --enable-https\
        --initialize-at-build-time=org.apache.juli.ClassLoaderLogManager,org.eclipse.jdt,org.apache.el.parser.SimpleNode,javax.servlet.jsp.JspFactory,org.apache.jasper.servlet.JasperInitializer,org.apache.jasper.runtime.JspFactoryImpl\
        -H:+JNI -H:+ReportUnsupportedElementsAtRuntime\
        -H:+ReportExceptionStackTraces -H:EnableURLProtocols=http,https,jar,jrt\
        -H:ConfigurationFileDirectories=tomcat-config\
        -H:ReflectionConfigurationFiles=tomcat-config/reflect-config.json\
        -H:ResourceConfigurationFiles=tomcat-config/resource-config.json\
        -H:JNIConfigurationFiles=tomcat-config/jni-config.json\
        -jar target/tomcat-stuffed-1.0.jar