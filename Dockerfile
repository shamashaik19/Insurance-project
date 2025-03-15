FROM openjdk:11
ARG JAR_FILE=target/*.jar
RUN echo "Copying file: ${JAR_FILE}"
COPY ${JAR_FILE} /app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
