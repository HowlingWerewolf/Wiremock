@echo off
docker image rm --force wiremock:v1.0
docker container rm --force Wiremock
mvn clean install && ^
docker compose up