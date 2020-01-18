FROM maven:3.3-jdk-8

COPY . /app
WORKDIR /app

RUN ["mvn", "clean", "install"]


CMD ["java", "-jar", "target/helloworld-0.0.1-SNAPSHOT.jar"]

EXPOSE 8080
