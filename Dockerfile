FROM openjdk:17-jdk-slim-buster
LABEL authors="jsween5723"

# java17 install

WORKDIR /server
COPY ./build/libs .
EXPOSE 5723
CMD java -jar *-SNAPSHOT.jar