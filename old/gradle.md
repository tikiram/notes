# Gradle

## Project Structure

```
.
+-- gradle
|   +-- wrapper
|   |   +-- gradle-wrapper.jar
|   |   +-- gradle-wrapper.properties
+-- gradlew
+-- gradlew.bat
+-- settings.gradle
+-- build.gradle
```

`gradlew`/`gradlew.bat`: Gradle wrapper invoker (a script), this scripts tries to initialize the jar file (the actual wrapper), first looks for java and then executes the jar.

`gradle-wrapper.jar`: Checks if the gradle programn already exists on the computer, if not then it downloads it. This jar checks for a specific Gradle version.

`gradle-wrapper.properties`: values used in the wrapper, such as the Gradle version to use.



`settings.gradle`: project specific values

`build.gradle`: project specific pipeline



### Dowloaded Gradle distributions

`~/.gradle/wrapper/dists`

### Upgrading the Gradle wrapper

```bash
./gradlew wrapper --gradle-version 6.5.1 
```

+ Run once: will only update `gradle-wrapper.properties`

+ Run second time: updates all wrapper files.

```bash
./gradlew --version
```

### Properties

You can simply add `org.gradle.daemon=false` to a `gradle.properties` file in the project root folder.

https://medium.com/@wasyl/make-your-gradle-builds-fast-again-ea323ce6a435

[Orhun.nl - Enable IntelliJ to build automatically when running](https://orhun.nl/blog/Enable-IntelliJ-to-build-automatically-when-running/)

## Intro

*Gradle* is a general purpose build management system.



## Taks

`build.gradle`

```groovy
task hello {
    doLast {
        println 'Hello Gradle'
    }
}
```

```bash
./gradlew hello
# gradle hello

# prints 'Hello Gradle'
```

### List all tasks

```bash
./gradlew tasks
./gradlew tasks --all
```



## Plugins

The Gradle build system uses plug-ins to extend its core functionality. A plug-in is an extension to Gradle which typically adds some preconfigured tasks. Gradle ships with a number of plug-ins, and you can develop custom plug-ins.

### `Application` Plugin

```groovy
plugins {
    id 'application'
}
```

Applying the `application` plugin also implicitly applies the `java` and `distribution` plugin.

Only mandatory configuration for the plugin is the specification of the main class of the application.

```groovy
application {
    mainClassName = 'org.gradle.sample.Main'
}
```

#### Running

```bash
gradle run
gradle run --debug-jvm
gradle run --args="foo --bar"
```

### `Java` Plugin

#### Layout

```
project
    - src
        - main
            - kotlin  (with kotlin jvm plugin)
            - java
            - resources
        - test
        -     - java
        -     - resources
```

> https://docs.gradle.org/current/userguide/java_plugin.html

### Kotlin

```
plugins {
    id "org.jetbrains.kotlin.jvm" version "1.3.41"
}
```

### Older approach (dont use)

```
apply plugin: 'kotlin'
```

### "Hello Word"

```kotlin
// Main.kt ==> this file is represented as MainKt class
package com.tikiram.phonetic

fun main(args: Array<String>){
    print("hello world")
}
```

The file `Main.kt` is represented as `MainKt` class.

```groovy
application {
    mainClassName = 'com.tikiram.phonetic.MainKt'
}
```

> https://kotlinlang.org/docs/reference/using-gradle.html
