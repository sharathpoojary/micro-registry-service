FROM maven:3.5-jdk-8 AS build
COPY src /usr/quiz-registery-service/src
COPY pom.xml /usr/quiz-registery-service
RUN mvn -f /usr/quiz-registery-service/pom.xml clean package
EXPOSE 8081
ENTRYPOINT ["java","/usr/quiz-registery-service/target/quiz-registery-service-1.0.0.jar"]