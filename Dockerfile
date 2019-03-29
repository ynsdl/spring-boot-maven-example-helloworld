FROM maven:3-jdk-11

RUN mkdir -p /build
WORKDIR /build
COPY . /build

RUN mvn clean install

CMD ["java", "-jar", "target/*.jar"]
