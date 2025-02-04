//console.log("hello, Node!")

const express = require('express')
//const helper = require('./helper.js')
const { success } = require('./helper.js')
let pokemons = require('./mock-pokemon.js')

const app = express()
const port = 3000

app.get('/', (req, res) => res.send('Hello, express with nodemon!'))

app.get('/api/pokemons', (req,res) => {
   // const total = pokemons.length
   // res.send(`Total of ${total} pokemons in the pokedex`)
   const message = `All ${pokemons.length} pokemons has been retrieved`
   res.json(success(message, pokemons))
})

app.get('/api/pokemons/:id', (req,res) => {
   const id = parseInt(req.params.id)
   const pokemon = pokemons.find(pokemon => pokemon.id === id)
   const message = `Pokemon N°${id} found `
   //res.json(helper.success(message, pokemon))
   res.json(success(message, pokemon))
})




app.listen(port, () => console.log(`App is started on http://localhost:${port}`))

