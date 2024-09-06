FROM eclipse-temurin:22.0.2_9-jdk-ubi9-minimal 
LABEL maintainer="ntnk11@hotmail.com"
COPY /target/spring-petclinic-3.3.0-SNAPSHOT.jar /home/spring-petclinic-3.3.0-SNAPSHOT.jar
CMD ["java","-jar","/home/spring-petclinic-3.3.0-SNAPSHOT.jar"]
