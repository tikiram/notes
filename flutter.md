# Flutter


## Flutter pub

### Cache
```
/opt/flutter/.pub-cache/hosted/pub.dartlang.org/<package>
```

## Pub

```
/opt/flutter/bin/cache/dart-sdk/bin/pub
```

### Adding to cache

```bash
pub cache add <package> --version "0.1.23"
```

### Cache
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

