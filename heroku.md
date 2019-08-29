# Heroku + Java

All Heroku applications run in a collection of lightweight Linux containers called **dynos**. This article describes dyno conventions on the Heroku platform.

> https://devcenter.heroku.com/articles/dynos

## Deploy

> Heroku + Java + Gradle
> https://devcenter.heroku.com/articles/getting-started-with-gradle-on-heroku

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




