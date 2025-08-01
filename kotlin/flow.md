
# Flow

A flow is conceptually a stream of data that can be computed asynchronously.


- A producer produces data that is added to the stream. Thanks to coroutines, flows can also produce data asynchronously.
- (Optional) Intermediaries can modify each value emitted into the stream or the stream itself.
- A consumer consumes the values from the stream. (terminal operation)


---

For instance, in the examples used throughout this topic, the repository layer shouldn't be performing operations on `Dispatchers.Main` that is used by `viewModelScope`.

---

 A `StateFlow` is hot: collecting from the flow doesn't trigger any producer code. A `StateFlow` is always active and in memory, and it becomes eligible for garbage collection only when there are no other references to it from a garbage collection root.

When a new consumer starts collecting from the flow, it receives the last state in the stream and any subsequent states

Cold flows are created on-demand and emit data when they’re being observed. Hot flows are always active and can emit data regardless of whether or not they’re being observed.

---

* To convert any flow to a `StateFlow`, use the `stateIn` intermediate operator.

* You can turn cold flows hot by using the `shareIn` operator.

```kotlin
class NewsRemoteDataSource(...,
    private val externalScope: CoroutineScope,
) {
    val latestNews: Flow<List<ArticleHeadline>> = flow {
        ...
    }.shareIn(
        externalScope,
        replay = 1,
        started = SharingStarted.WhileSubscribed()
    )
}
```

The `SharingStarted.WhileSubscribed()` start policy keeps the upstream producer active while there are active subscribers. Other start policies are available, such as `SharingStarted.Eagerly` to start the producer immediately or `SharingStarted.Lazily` to start sharing after the first subscriber appears and keep the flow active forever.

---

The `shareIn` function returns a `SharedFlow`, a hot flow that emits values to all consumers that collect from it. A `SharedFlow` is a highly-configurable generalization of `StateFlow`.

The `shareIn` operator returns a `SharedFlow` instance whereas `stateIn` returns a `StateFlow`.

`StateFlow` is a specialized configuration of `SharedFlow` optimized for sharing state: the last emitted item is replayed to new collectors, and items are `conflated` using `Any.equals`.