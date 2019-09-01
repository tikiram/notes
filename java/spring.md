# Spring

## Fast Start

+ Rest Repositories  ---> includes web_starter
+ Spring Data JPA    ---> includes JDBC starter
+ `database` driver

Add JPA Facet (Optional). Add JPA Facet to main

Shorcut:  `Ctrl` + `Shift` + `Alt` + `S`

---
---

### Must Read

+ https://www.endoflineblog.com/spring-best-practices
+ **Spring + Kotlin**
  https://kotlinlang.org/docs/reference/compiler-plugins.html

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



## REST Service

> https://spring.io/guides/gs/rest-service/#scratch

## Transaction

> https://www.baeldung.com/the-persistence-layer-with-spring-and-jpa

"However, if we’re using a Spring Boot project, and have a spring-data-* or spring-tx dependencies on the classpath, then transaction management will be enabled by default."



> https://stackoverflow.com/questions/2396493/what-is-a-classpath-and-how-do-i-set-it

**@Transactional**

he annotation supports **further configuration** as well:

- the *Propagation Type* of the transaction
- the *Isolation Level* of the transaction
- a *Timeout* for the operation wrapped by the transaction
- a *readOnly flag* – a hint for the persistence provider that the transaction should be read only
- the *Rollback* rules for the transaction

Note that – by default, rollback happens for runtime, unchecked exceptions only. **The checked exception does not trigger a rollback** of the transaction. We can, of course, configure this behavior with the *rollbackFor* and *noRollbackFor* annotation parameters.



---

## Database

### MariaDB

```groovy
implementation 'org.mariadb.jdbc:mariadb-java-client:2.4.2'
```

```
spring.datasource.url=jdbc:mariadb://drunkserver.tk:3306/spring
spring.datasource.username=tikiram2
spring.datasource.password=YYP!la0g0&#R
spring.datasource.driverClassName=org.mariadb.jdbc.Driver

spring.jpa.properties.hibernate.dialect = org.hibernate.dialect.MariaDB10Dialect
spring.jpa.hibernate.ddl-auto=create-drop
spring.jpa.show-sql = true

spring.datasource.testWhileIdle = true
spring.datasource.validationQuery = SELECT 1
```

### Postgresql

```groovy
runtimeOnly 'org.postgresql:postgresql'
```

```
spring.datasource.url= jdbc:postgresql://localhost/db?user=bob&password=mypass
spring.datasource.driverClassName=org.postgresql.Driver

spring.jpa.database-platform=org.hibernate.dialect.PostgreSQLDialect
spring.jpa.hibernate.ddl-auto=create

spring.datasource.maxActive=10
spring.datasource.maxIdle=5
spring.datasource.minIdle=2
spring.datasource.initialSize=5
spring.datasource.removeAbandoned=true
```

JDBC Postgresql Format

```
jdbc:postgresql://<host>:<port>/<dbname>?sslmode=require&user=<username>&password=<password>
```

