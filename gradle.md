# Gradle

## Application Plugin

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

## Running

```bash
gradle run
gradle run --debug-jvm
gradle run --args="foo --bar"
```



## Java Plugin

###  Layout

```
project
	- src
		- main
			- kotlin  (with kotlin jvm plugin)
			- java
			- resources
		- test
		- 	- java
		- 	- resources
```

> https://docs.gradle.org/current/userguide/java_plugin.html

## Kotlin

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



