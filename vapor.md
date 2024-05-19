
# Vapor

```bash
swift --version
brew install vapor
```

```bash
vapor new my_project
cd new my_project
open Package.swift
```

- Copy `configure` settings from other project

## Migrate DB

```bash
swift run App migrate
````

## Heroku

```bash
echo "5.10" > .swift-version
```

```bash
echo "web: App serve --env production" \
  "--hostname 0.0.0.0 --port \$PORT" > Procfile
```

Commit new files and create Heroku App

+ add Buildpack:

```
vapor/vapor
```

+ add env variables
+ deploy
