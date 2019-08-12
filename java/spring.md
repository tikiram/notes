# Spring



## Starters

The starters contain a lot of the dependencies that you need to get a project up and running quickly and with a consistent, supported set of managed transitive dependencies.



> https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/#using-boot-starter



## RepositoryRestResource

The *@RepositoryRestResource* annotation is optional and is used to customize the REST endpoint. If we decided to omit it, Spring would automatically create an endpoint at “*/websiteUsers*” instead of “*/users*“.

`org.springframework.data.rest.core.annotation.RepositoryRestResource`

GET `http://localhost:8080/users `

POST `http://localhost:8080/users `

GET `http://localhost:8080/user/1`



> https://www.baeldung.com/spring-data-rest-intro

> https://www.springboottutorial.com/hibernate-jpa-tutorial-with-spring-boot-starter-jpa

> https://spring.io/guides/tutorials/rest/

