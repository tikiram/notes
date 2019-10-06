# Go

```bash
sudo apt install go
```

Go defines a lot of variables, you can se it with the following command
```bash
go env
```

The `go get` command downloads of the content inside the `$GOPATH` directory, when you import a package the Go compiler searchs inside the `$GOPATH` directory.

The `$GOROOT` is where the go package is at.


## Unit Testing

Go provide built-in testing funcionality.

Should follow the following constraints:

File: `<id1>_test.go`
Functions: `func Test<id2>(t *testing.T)`

```go
package main

import "testing"

fun TestSomething(t *testing.T){
	T.Error("")
	//T.Fail
	//T.Errorf
	//T.log
}
```


> https://medium.com/rungo/unit-testing-made-easy-in-go-25077669318

## Gin Web Framework

```bash
go get -u github.com/gin-gonic/gin
```

> https://github.com/gin-gonic/gin