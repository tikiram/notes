
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

- Copy `.env`/`example.env` files
  + Set database connection
- Add JWT library
- Copy `configure.swift` settings from other project

## Migrate DB

```bash
swift run App migrate
````

## Run

```bash
swift run App serve --port 3000
```

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

## Update Dependencies

```bash
swift package update
```

---

## Update

### Swift Version

Same swift version on both files

+ Package.swift
+ .swift-version
