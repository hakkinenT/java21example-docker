FROM alpine:3.19.0

RUN apk add --no-cache openjdk21

ENV JAVA_HOME=/usr/lib/jvm/java-21-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"

WORKDIR /tmp
RUN mkdir java-test
COPY MyJavaProgram.java /tmp/java-test

WORKDIR /tmp/java-test
RUN javac MyJavaProgram.java
CMD [ "java", "MyJavaProgram" ]