# Swift

```bash
swift package init --name MyLibrary --type library
```

> https://www.swift.org/getting-started/library-swiftpm/


## Issues

### Vapor

```
swift package clean
```

### Missing package product

https://swiftylion.com/articles/missing-package-product

Main actor

https://stackoverflow.com/questions/69263941/how-do-i-initialize-a-global-variable-with-mainactor

On Xcode 16 all view are going to be marked as `@MainActor` by default

https://fatbobman.com/en/posts/swiftui-views-and-mainactor/

### Package - Code check based on "build target"

https://stackoverflow.com/questions/34778823/swift-package-manager-uikit-dependency


### Main

```swift
Task { @MainActor in
  self.isUnlocked = true
}
```

Same as

```swift
DispatchQueue.main.async {
  self.isUnlocked = true
}
```