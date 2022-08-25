FROM openjdk:11
VOLUME /tmp
EXPOSE 8200
ADD target/MFPE-SeverityMS-JAR.jar MFPE-SeverityMS-JAR.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /MFPE-SeverityMS-JAR.jar" ]
