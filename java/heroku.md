# Heroku + Java

## Fast Start

### Others

```bash
heroku ps:scale web=1
```

### Install

```bash
sudo apt update
sudo apt install snapd
sudo snap install heroku --classic
heroku login
```

### Deploy

File:  `src/main/resources/application.properties`

```
server.port=${PORT:80}
```

File: `Procfile`

```
web: java -jar build/libs/gradle-getting-started-1.0.jar
```

```
echo "web: java -jar build/libs/<name.jar>" > Procfile
```

Check project is in a git repository

```bash
git status
```

In project root directory:

```bash
heroku create
git push heroku master
heroku logs --tail
```

### Add Postgresql

```bash
heroku addons:create heroku-postgresql
heroku config
heroku pg
```

File: `src/main/resources/application.properties`

```
spring.datasource.url= ${DATABASE_URL:}

spring.datasource.driverClassName=org.postgresql.Driver
spring.datasource.maxActive=10
spring.datasource.maxIdle=5
spring.datasource.minIdle=2
spring.datasource.initialSize=5
spring.datasource.removeAbandoned=true
spring.jpa.hibernate.ddl-auto=create
spring.jpa.database-platform=org.hibernate.dialect.PostgreSQLDialect
server.port=${PORT:80}
```

File: `build.gradle`

```groovy
runtimeOnly 'org.postgresql:postgresql'
implementation 'org.hibernate:hibernate-core:5.4.2.Final' // only if bug ocurrs
```

Install local Postgresql.

Add run argument

```
-DDATABASE_URL="jdbc:postgresql://localhost/myDb?user=bob&password=pw"
```

File: `~/bashrc`

```
export DATABASE_URL="jdbc:postgresql://localhost/mydb?user=bob&password=pw"
```

---

---

# Heroku

All Heroku applications run in a collection of lightweight Linux containers called **dynos**. This article describes dyno conventions on the Heroku platform.

> https://devcenter.heroku.com/articles/dynos

## Deploy

> Heroku + Java + Gradle
> https://devcenter.heroku.com/articles/getting-started-with-gradle-on-heroku

Set a explicit port

`application.properties`

```
server.port=${PORT:80}
```

Heroku cli = Heroku toolbet

Install Snap

```bash
sudo apt update
sudo apt install snapd
```

*Either restart your machine, or log out and in again, to complete the installation.*

Install heroku cli

```bash
sudo snap install heroku --classic
```

```
heroku login
```

Deploy the app. Execute the following in the proyect's root directory 

```bash
heroku create
```

*When you create an app, a Git remote (called `heroku`) is also created and associated with your local Git repository.*

```bash
git push heroku master
```

*The application is now deployed. Ensure that at least one instance of the app is running:*

```bash
heroku ps:scale web=1
```

```bash
heroku open
```

## View Logs

> https://devcenter.heroku.com/articles/logging

```bash
heroku logs --tail
```

By default, Heroku stores 1500 lines of logs from your application. However, it makes the full log stream available as a service - and several add-on providers have written logging services that provide things such as log persistence, search, and email and SMS alerts.

## Define a Procfile

`Procfile`

```
web: java -jar build/libs/gradle-getting-started-1.0.jar
```

`Web` It declares that this process type will be attached to the [HTTP routing](https://devcenter.heroku.com/articles/http-routing) stack of Heroku, and receive web traffic when deployed.

Procfiles can contain additional process types. For example, you might declare one for a background worker process that processes items off of a queue.

> **Web**: Web dynos are dynos of the “web” process type that is defined in your [Procfile](https://devcenter.heroku.com/articles/procfile). Only web dynos receive HTTP traffic from the [routers](https://devcenter.heroku.com/articles/http-routing).

# Scale

Right now, your app is running on a single web [dyno](https://devcenter.heroku.com/articles/dynos). Think of a dyno as a lightweight container that runs the command specified in the `Procfile`

Dynos currenty running

```bash
heroku ps
```

By default, your app is deployed on a free dyno. Free dynos will sleep after a half hour of inactivity (if they don’t receive any traffic). This causes a delay of a few seconds for the first request upon waking. Subsequent requests will perform normally. Free dynos also consume from a monthly, account-level quota of [free dyno hours](https://devcenter.heroku.com/articles/free-dyno-hours) - as long as the quota is not exhausted, all free apps can continue to run.

## Run locally

```bash
gradlew build
```

Another file, `system.properties`, determines the version of Java to use. (Heroku supports many [different versions](https://devcenter.heroku.com/articles/java-support#supported-java-versions)).

The Gradle process will copy the dependencies into a single JAR file in your application’s `build/libs` directory. This process is called “vendoring”, and it is done by default in a Spring app, such as the sample. But it can also be done manually as described in the [Deploying Gradle Apps on Heroku](https://devcenter.heroku.com/articles/deploying-gradle-apps-on-heroku#verify-that-your-build-file-is-set-up-correctly) guide.

```bash
heroku local web
```

Just like Heroku, `heroku local` examines the `Procfile` to determine what to run. It also defines the port your app will bind to by setting the `PORT` environment variable, which is configured as `server.port` in the file `src/main/resources/application.properties`.

`heroku local` doesn’t just run your app - it also sets “config vars”, something you’ll encounter in a later tutorial.

https://stackoverflow.com/questions/39838330/heroku-local-web-debug-with-intellij-idea

## Free Heroku Postgres add-on

> https://devcenter.heroku.com/articles/heroku-postgresql

```bash
heroku addons:create heroku-postgresql
```

```bash
heroku addons

heroku config

heroku pg
```

Heroku sets a system property `DATABASE_URL` with a JDBC url formated value

`application.properies`

```
spring.datasource.url= ${DATABASE_URL:}

spring.datasource.driverClassName=org.postgresql.Driver
spring.datasource.maxActive=10
spring.datasource.maxIdle=5
spring.datasource.minIdle=2
spring.datasource.initialSize=5
spring.datasource.removeAbandoned=true
spring.jpa.hibernate.ddl-auto=create
spring.jpa.database-platform=org.hibernate.dialect.PostgreSQLDialect
server.port=${PORT:80}
```

```groovy
runtimeOnly 'org.postgresql:postgresql'
```

This is enough for app to connect.

JDBC Format

```
jdbc:postgresql://<host>:<port>/<dbname>?sslmode=require&user=<username>&password=<password>
```

**Issue: clob-is-not-yet-implemented**

https://stackoverflow.com/questions/49110818/method-org-postgresql-jdbc-pgconnection-createclob-is-not-yet-implemented

```groovy
implementation 'org.hibernate:hibernate-core:5.4.2.Final'
```

**Localhost (running project with java command)**

Set a system property using `-D` argument with the JDBC URL value.

```
java -DDATABASE_URL="jdbc:postgresql://localhost/myDb?user=bob&password=pw" <more commands>
```

**Localhost (running project with `heroku local web`)**

Set a system property with Linux's `export` command then run the project.

```
export DATABASE_URL="jdbc:postgresql://localhost/mydb?user=bob&password=pw"

heroku local web
```

You can put the whole `export` command at the end of the `~/.bashrc` file.

**Custom Format**

If the system property has a custom format you can always use a bean to handle the data source.

```java
@Configuration
public class MainConfiguration {

    // Value from the `application.properties` file
    @Value("${spring.datasource.url}")
    private String value;

    @Bean
    public HikariDataSource dataSource() throws URISyntaxException {

//        // JDBC URL generation
//
//        URI dbUri = new URI(value);
//        String username = dbUri.getUserInfo().split(":")[0];
//        String password = dbUri.getUserInfo().split(":")[1];
//        String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + dbUri.getPath() + "?user=" + username + "&password=" + password;

        HikariConfig config = new HikariConfig();
        config.setJdbcUrl(dbUrl);
        return new HikariDataSource(config);
    }
}
```

**Spring Cloud Connector**

If you do not want to specify the `spring.datasource.url` property you can use the Heroku Cloud Connector, its scans the system properties and configures some services.

```groovy
implementation 'org.springframework.boot:spring-boot-starter-cloud-connectors'
```

I have no idea how to configure the Local Cloud Connector for the local environment.
