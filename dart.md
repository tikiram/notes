# Dart

## Future

```dart
Future something() async {
    var value = await myTypedFuture();
}
```



```dart
myTypedFuture
    .then((value){
        //...
    })
    .catchError((error) {
        //...
    });
```



You can mix await and .catchError. This way the value returned is null but you have the oportunity to handle the error as well without wrapping it in try/catch.

```dart
Future runMyFuture() async {
    var value = await myTypedFuture()
        .catchError((error) {
            print(error);
        });
}
```

### Waiting for a Future list

```dart
await Future.wait(futures);
```

### Timeout

```dart
await myTypedFuture()
    .timeout( Duration(seconds:2), onTimeout: (){
        print('0 timed out');
        return false;
    });
```

### .asStream

