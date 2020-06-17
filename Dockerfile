FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/prodMS-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 3457
ENV JAVA_OPTS=""
RUN sh -c "touch prodMS-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "prodMS-0.0.1-SNAPSHOT.jar" ]