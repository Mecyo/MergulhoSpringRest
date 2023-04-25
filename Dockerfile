FROM openjdk:11
VOLUME /tmp
EXPOSE 8090
ENTRYPOINT ["java","-jar","/app.jar"]