# Node.js - tuto

[Node.js Tuto Débutant](https://youtu.be/NRxzvpdduvQ)
1h24

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

## HTTP response
- Data : quality ?  
- JSON : instead of string  
   express : `res.send()` => `res.json(pokemon)`  
- MIME type  
   Content-Type:application/json
   Content-Type:text/html
- Status Code  
   200 : OK
   404 : Resource not found
   etc.
