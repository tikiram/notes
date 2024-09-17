
# Xcode

⌘ is the Command or Cmd () key.
⌃ is the Control or Ctrl key.
⌥ is the Option or Alt key.
⇧ is the Shift key.
⇪ is the Caps Lock key.
fn is the Function key.

---

Wrap Lines: ⌃ ⇧ ⌘ L
Font Size - Decrease: ⌘ -
Font Size - Increase: ⌘ +
Font Size - Reset: ⌃ ⌘ 0

Toggle Navigator: ⌘ 0


To search a file/class ⌘ + ⇧ + O (Command + Shift + O)

To See the current opened file in Project Navigator ⌘ + ⇧ + J

To go to line number in a file use ⌘ + 

Go to definition - the shortcut now is ^ + ⌘ + J (more readable Ctrl + Cmd + J).

## Issues

Missing package product

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