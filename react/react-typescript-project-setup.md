# Node Project Setup

* https://www.toptal.com/developers/gitignore
	- WebStorm macOS


* disable internal eslint

`.env`

```env
DISABLE_ESLINT_PLUGIN=true
```

* https://eslint.org/
	- style + typescript + react
	- save as json (js can cause conflict with the linter + ts)

* https://www.npmjs.com/package/eslint-config-airbnb-typescript

* https://prettier.io/docs/en/install.html
	- supports typescript out of the box

```
    "rules": {
        "react/react-in-jsx-scope": "off"
    }
```