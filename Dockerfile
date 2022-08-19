FROM tomcat:8.5.82-jre8-openjdk-slim 

WORKDIR /usr/local/tomcat/webapps
RUN apt-get update; apt-get install -y curl
RUN curl -O -L https://github.com/brentmcconnell/java-sample-container/raw/master/SampleWebApp.war
RUN mv SampleWebApp.war ROOT.war
EXPOSE 8080

CMD ["catalina.sh", "run"]
