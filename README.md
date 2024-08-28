# Spring Boot JPA MySQL - Building Rest CRUD API example

This is just a Spring Boot API for tutorials that runs with Java 17 and container.

## Required installed tools
- Docker
- Maven
- OpenJDK 17
- Any IDE that supports Java
- Git
- cURL (to test in command line)

This API can be run with two modes standalone and docker-compose. To run it in standalone mode you need to export/have the following environment variables: *SPRING_DATASOURCE_URL*, *SPRING_DATASOURCE_USERNAME* and *SPRING_DATASOURCE_PASSWORD*, this envs are used by Spring to confi its datasource.

To run API with docker-compose mode, you need to use a .env file with the following environments: *MYSQL_DATABASE*, *MYSQL_USER* and *MYSQL_PASSWORD*.

## Command to run Spring Boot API with docker-compose
```
docker-compose --env-file /path/to/env/file up
```

## Comamnd to run Spring Boot API as standalone
```
mvn spring-boot:run
```

## Endpoints

This Spring Boot API has the following endpoint that you can use to interact with it

### GET /api/tutorials
Get all tutorials
```
curl --request http://localhost:8080/api/tutorials
```

### GET /api/tutorials/{id}
Get a specific tutorial with the given id
```
curl --request http://localhost:8080/api/tutorials/{id}
```

### POST /api/tutorials
Create a tutorial
```
curl --header "Content-Type: application/json" --request POST --data '{"title":"Tutorial name","description":"Tutorial description", "published": true}' http://localhost:8080/api/tutorials
```

### PUT /api/tutorials/{id}
Update tutorial's data
```
curl --header "Content-Type: application/json" --request PUT --data '{"title":"New tutorial name","description":"New tutorial description", "published": false}' http://localhost:8080/api/tutorials/{id}
```

### DELETE /api/tutorials/{id}
Delete a specific tutorial with the given id
```
curl --request DELETE http://localhost:8080/api/tutorials/{id}
```

For more detail, please visit:
> [Spring Boot JPA + MySQL - Building Rest CRUD API example](https://www.bezkoder.com/spring-boot-jpa-crud-rest-api/)

> [Spring Boot JPA + PostgreSQL - Building Rest CRUD API example](https://www.bezkoder.com/spring-boot-postgresql-example/)
