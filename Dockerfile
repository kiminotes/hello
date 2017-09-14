FROM java

LABEL maintainer "kimi"

WORKDIR .

RUN mvnw clean pacakge -Dmaven.test.skip
COPY target/hello-0.0.1-SNAPSHOT.jar /home/admin/hello/target/hello.jar

CMD ["mvnw"]