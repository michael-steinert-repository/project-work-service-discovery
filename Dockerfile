FROM gcr.io/distroless/java:11

VOLUME /tmp

ADD target/*.jar app.jar

ENV JAVA_OPTS=""

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /app.jar" ]