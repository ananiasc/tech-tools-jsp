# Etapa de construção
FROM maven:3.8.6-openjdk-8 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn install -DskipTests

# Etapa de execução
FROM tomcat:8.5-jdk8-openjdk
VOLUME /tmp

WORKDIR /usr/local/tomcat

COPY --from=build /app/target/TechToolsWeb-0.0.1.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]