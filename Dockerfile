FROM centos:7
LABEL name="java app on Centos"\
  maintainer="katsudoka"\
  vendor="katsudoka"\
  summary="A Java Image based on Centos"
  
 #Change to user root to install jdk, can't install with any other user
 
user
USER root
RUN yum update -y && \
  yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
  yum clean all
  
ENV JAVA_HOME /usr/lib/jvm/java

#copy JAR into image
COPY target/microcommerce-0.0.1-SNAPSHOT.jar /microcommerce.jar
EXPOSE 9090

#run application with this command line
CMD["usr/bin/java","-jar","-Dspring.profiles.active=default","microcommerce.jar"]
