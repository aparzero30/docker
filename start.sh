#!/bin/bash
# docker cp taskDB.sql e16-spring-boot-activity-dbpostgresql-1:/tmp/taskDB.sql
# docker exec -it e16-spring-boot-activity-dbpostgresql-1 bash -c "pg_restore -U postgres -d taskDB /tmp/taskDB.sql"



sleep 10

# Set the password for the postgres user
export PGPASSWORD=1234


pg_restore -h e16-spring-boot-activity-dbpostgresql-1 -U postgres -d taskDB /tmp/taskDB.sql


java -jar /task-docker.jar
