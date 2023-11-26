
# Jest



## Mock modules

### Simple

```javascript
    axios.get.mockImplementation(() => Promise.resolve({ data: [commitment] }));

    axios.get.mockImplementation(() => Promise.reject(new Error('some error')));

    axios.get.mockImplementation(
      () =>
        new Promise((resolve, reject) => {
          setTimeout(() => reject(new Error('some error')), 200);
        })
    );
```

### Using `__mocks__`

Jest has a moduleNameMapper config property which can be used to specify a string or regular expression to match your import and replace it with a mock file

Alternatively, you can add mocks without specifying it in the moduleNameMapper by placing your mock file in a folder named __mocks__ which should be in the same directory as the file you need to mock

In case it is in node_modules, the __mocks__ folder should be in your parent directory.

> https://jestjs.io/docs/manual-mocks

```js
// __mocks__/axios.js

module.exports = {
    get: something
};

```

## Queries

+ `getBy...`: get a node or throws an expection otherwise
+ `queryBy...`: get a node or null
+ `findBy...`: wait for a node (1000ms max) or throws an expection otherwise

> https://testing-library.com/docs/queries/about/