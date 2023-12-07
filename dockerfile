FROM docker.io/library/openjdk:17
COPY build/libs/docker-test-0.0.1-SNAPSHOT.jar docker-test.jar
ENTRYPOINT ["java", "-jar", "/docker-test.jar"]