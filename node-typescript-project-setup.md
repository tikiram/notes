# Node Project Setup

* https://www.toptal.com/developers/gitignore
	- Node WebStorm macOS
* ts-node
	- https://typestrong.org/ts-node/docs/

```bash
npm install -D typescript
npm install -D ts-node
npm install -D @types/node
touch tsconfig.json
```
* nodemon

```bash
npm i nodemon --save-dev
```

* scripts

```
"start": "node build/index.js",
"build": "tsc",
"dev": "nodemon src/index.ts",
```

* https://expressjs.com/

```bash
npm i --save-dev @types/express
```

* https://eslint.org/
	- style + no typescript config
	- save as json (js can cause conflict with the linter + ts)

* https://www.npmjs.com/package/eslint-config-airbnb-typescript

* https://prettier.io/docs/en/install.html
	- supports typescript out of the box

## Extras

1. https://nodejs.dev/en/learn/nodejs-with-typescript/