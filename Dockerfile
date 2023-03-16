#compile the artifact
FROM maven as build
WORKDIR /app
COPY . .
RUN mvn clean install

#get the artifact to run the java app
FROM openjdk:11.0
WORKDIR /app
COPY --from=build /app/target/counter-app.jar /app/counter-app.jar
EXPOSE 9008
CMD ["java", "-jar","counter-app.jar"]
