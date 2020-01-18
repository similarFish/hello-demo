FROM java:8

VOLUME /ROOT

ADD /target/helloworld-0.0.1-SNAPSHOT.jar /app.jar

RUN bash -c 'touch /app.jar'

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo 'Asia/Shanghai' >/etc/timezone

EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","app.jar"]