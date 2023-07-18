FROM openjdk:17-jdk-slim-buster
LABEL authors="jsween5723"

# java17 install

WORKDIR /server
COPY ./build/libs .
WORKDIR /server/src/main/resources
COPY ./src/main/resources .
WORKDIR /server
EXPOSE 5723
HEALTHCHECK --interval=10s --timeout=3s CMD curl -f http://localhost:5723/actuator/health || exit 1
CMD java -jar *-SNAPSHOT.jar