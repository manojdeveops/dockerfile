FROM centos

MAINTAINER MANOJ manojkarthik43@gmail.com

RUN mkdir /opt/tomcat/

WORKDIR /opt/tomcat
RUN curl -O http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.43/bin/apache-tomcat-8.5.43.tar.gz
RUN tar xvf apache-tomcat-8.5.43.tar.gz
RUN mv apache-tomcat-8.5.43/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/ThanishInfotech/Docker1/raw/master/dist/samplewebapp.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
