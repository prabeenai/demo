FROM openjdk:17
EXPOSE 8080
ADD target/demo-0.0.1-SNAPSHOT.jar demo-app.jar
ENTRYPOINT ["java","-jar","/demo-app.jar"]

