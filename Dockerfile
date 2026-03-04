FROM amazoncorretto:8-alpine3.17-jre

EXPOSE 8080

COPY ./target/1-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

CMD java -jar 1-1.0-SNAPSHOT.jar