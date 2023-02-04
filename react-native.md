# React Native



```bash
npm i -g expo-cli
```

```
expo init voyage-app
```

This install yarn for some reason

+ `yarn start`

+ `yarn android`

+ `yarn ios`

+ `yarn web`

## Paper

```bash
yarn add react-native-paper
```

```js
// babel.config.js
env: {
      production: {
        plugins: ['react-native-paper/babel'],
      },
    },
```



## Eslint

```bash
yarn add --dev eslint
yarn add --dev eslint-plugin-react
yarn add --dev eslint-plugin-react-native
```

```json
{
  "extends": "airbnb",
  "settings": {
    "react": {
      "version": "detect"
    }
  },
  "rules": {
    "strict": [0, "global"],
    "func-names": 0,
    "object-shorthand": 0,
    "consistent-return": 0,
    "prefer-template": 0,
    "comma-dangle": ["error", {
        "arrays": "always-multiline",
        "objects": "always-multiline",
        "imports": "always-multiline",
        "exports": "always-multiline",
        "functions": "never"
    }]
  }
}
```


