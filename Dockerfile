FROM gradle:5.4-jdk8 AS build
COPY . /app
WORKDIR /app
RUN gradle bootJar
FROM openjdk:8u212-jdk-alpine3.9
WORKDIR /usr/src/app
COPY --from=build /app/build/libs/currency-conversion-service-0.0.1.jar /usr/src/app/app.jar
ENTRYPOINT ["java","-jar","/usr/src/app/app.jar"]