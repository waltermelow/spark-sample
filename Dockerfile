FROM heroku/cedar:14

 # Install maven
 RUN apt-get update
 RUN apt-get install -y maven

RUN useradd -d /app -m app
USER app
WORKDIR /app

ENV HOME /app
ENV PATH /app/bin:/app/.jdk/bin:$PATH
ENV JAVA_HOME /app/.jdk

ENV PORT 3000

RUN mkdir -p /app/heroku
RUN mkdir -p /app/src
RUN mkdir -p /app/.profile.d
RUN mkdir -p /app/.jdk
RUN curl -s -L https://lang-jvm.s3.amazonaws.com/jdk/cedar-14/openjdk1.8-latest.tar.gz | tar xz -C /app/.jdk

WORKDIR /app

# Prepare by downloading dependencies
ADD pom.xml /app/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]

# Adding source, compile and package into a fat jar
ADD src /app/src
RUN ["mvn", "package"]

ONBUILD COPY . /app/src
EXPOSE 3000 
CMD ["/app/.jdk/bin/java", "-jar", "target/spark-sample-jar-with-dependencies.jar"]
