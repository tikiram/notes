# Flutter

flutter doctor
flutter upgrade
flutter doctor --android-licenses
>https://github.com/flutter/flutter/issues/16025

flutter pub run build_runner build


Dart SDK:
```
/home/tikiram/flutter/bin/cache/dart-sdk
```

```
~/Android/Sdk/tools/bien/sdkmanager --update
```

## Game in Flutter

### Normal game
https://medium.com/flutter-community/from-zero-to-a-multiplatform-flutter-game-in-a-week-8245da931c7e

### With Flame
https://blog.geekyants.com/building-a-2d-game-in-flutter-a-comprehensive-guide-913f647846bc

## Flare - Animations
https://www.2dimensions.com/about-flare
---

## Flutter Pub

**Cache**

```
/opt/flutter/.pub-cache/hosted/pub.dartlang.org/<package>
```

## Pub

```
/opt/flutter/bin/cache/dart-sdk/bin/pub
```

**Adding to cache**

```bash
pub cache add <package> --version "0.1.23"
```

**Cache**

```
~/.pub-cache/hosted/pub.dartlang.org/<package>
```

---

## Flex

```dart
Row(
      children: <Widget>[
        Expanded(
          flex: 2, // 20%
          child: Container(color: Colors.red),
        ),
        Expanded(
          flex: 6, // 60%
          child: Container(color: Colors.green),
        ),
        Expanded(
          flex: 2, // 20%
          child: Container(color: Colors.blue),
        )
      ],
    )
```

