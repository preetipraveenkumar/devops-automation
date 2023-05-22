FROM mcr.microsoft.com/openjdk/jdk
#FROM openjdk:11
# COPY . /usr/src/myapp
# WORKDIR /usr/src/myapp
# RUN javac Main.java
# CMD ["java", "Main"]
EXPOSE 8080
ADD target/devops-integration.jar devops-integration.jar
ENTRYPOINT ["java","-jar","/devops-integration.jar"]
