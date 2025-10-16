

* Compose's Snapshot system tracks reads of mutableStateOf values during composition,
* `TextFieldState` - Whenever you read `textFieldState.text` in a composable, Compose subscribes to it.

* `mutableStateOf` creates an object that implements `State<T>` and is integrated with the snapshot system.

* Reads are fine-grained, not global. / Las lecturas son granulares, no globales