# FROM openjdk:17-jdk-alpine
# ARG JAR_FILE=target/*.jar
# EXPOSE  8080
# ADD target/task-docker.jar task-docker.jar
# ENTRYPOINT ["java","-jar","/task-docker.jar"]



# FROM openjdk:17-jdk-alpine
# ARG JAR_FILE=target/*.jar
# EXPOSE 8080
# ADD target/task-docker.jar task-docker.jar
# COPY start.sh  /usr/src/start.sh
# RUN chmod +x start.sh
# ENTRYPOINT ["/start.sh"]





# FROM openjdk:17-jdk-alpine
# ARG JAR_FILE=target/*.jar
# EXPOSE 8080
# RUN apk update && apk add docker
# COPY start.sh start.sh
# COPY  taskDB.sql taskDB.sql
# ADD target/task-docker.jar task-docker.jar
# ENTRYPOINT ["sh", "/start.sh", "java", "-jar", "/task-docker.jar"]


FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY start.sh start.sh
COPY taskDB.sql /tmp/taskDB.sql
ADD target/task-docker.jar task-docker.jar
RUN apk add --no-cache postgresql-client
ENTRYPOINT ["sh", "/start.sh", "java", "-jar", "/task-docker.jar"]



