# Node.js - tuto

[Node.js Tuto Débutant](https://youtu.be/NRxzvpdduvQ)

## run app.js
`> node app.js`  

## package.json
`> npm init`  

```json
"scripts": {
    "start": "node app.js"
  }
```
`>npm run start`  


## install express dependency

`> npm install express --save`  
node_modules/ : géré par npm

## backquotes
`backquotes to interprete variables ${my-var} `

## install nodemon dependency
`> npm install --save-dev nodemon`  

```json
"scripts": {
   "start": "nodemon app.js"
}
"devDependencies": {
   "nodemon": "^3.1.9"
}
```
`>npm run start`  


## parameters in query string

'/api/pokemons/:id'
req.params.id
res.send(`param id : ${id}`)


## dataset : mock-pokemon.json

https://github.com/codeursenior/node-pokemons-api/tree/master

```js
require('mock-pokemon.json')
id = parseInt(req.params.id)
pokemons.find(pokemon => pokemon.id === id)

```

## HTTP response [1h24]
- Data : howt to ensure the validity ?  
- JSON : instead of string  
   express : `res.send()` => `res.json(pokemon)`  
- MIME type  
   Content-Type:application/json  
   Content-Type:text/html  
- Status Code  
   200 : OK  
   404 : Resource not found  
   etc.  

## helper.js
Method to attach a confirmation message to the response

```js
// helper.js
export.success = (message,data) => {return {message, data}}
```
```js
// app.js
const helper = require('./helper.js')
const message = `Pokemon N°${id} found `
res.json(helper.success(message, pokemon))
```

To import only the medhod success() :  
```js
const { success } = required('./helper.js')
...
res.json(success(message, pokemon))
```

## /api/pokemons

Exercice : return all pokemons in json with a confirmation message  

## Middleware [1h45]  
