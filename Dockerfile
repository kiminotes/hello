FROM java

LABEL maintainer "kimi"

WORKDIR .
RUN mkdir -p /home/admin/build/
COPY . /home/admin/build/
RUN /home/admin/build/mvnw clean package -Dmaven.test.skip && \
    mkdir -p /home/admin/hello/target && \
    cp /home/admin/build/target/hello-0.0.1-SNAPSHOT.jar /home/admin/hello/target/hello.jar

ENTRYPOINT ["java -jar /home/admin/hello/target/hello.jar"]