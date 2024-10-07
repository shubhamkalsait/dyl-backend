FROM ubuntu:latest

RUN apt update 
RUN apt install open-jdk-8 -y
RUN apt install maven -y

COPY . /opt/

WORKDIR /opt/

RUN mvn clean package -Dmaven.test.skip=true

EXPOSE 8080

CMD java -jar target/spring-backend-v1.jar
