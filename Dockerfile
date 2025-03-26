FROM amazoncorretto:21 AS application
VOLUME /tmp
WORKDIR /usr/src
COPY target/wiremock-1.0-local.jar wiremock.jar
EXPOSE 8081
CMD ["sh", "-c", "java -jar wiremock.jar"]