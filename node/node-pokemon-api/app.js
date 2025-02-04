//console.log("hello, Node!")

const express = require('express')
let pokemons = require('./mock-pokemon.js')

const app = express()
const port = 3000

app.get('/', (req, res) => res.send('Hello, express with nodemon!'))

app.get('/api/pokemons', (req,res) => {
   const total = pokemons.length
   res.send(`Total of ${total} pokemons in the pokedex`)
})

app.get('/api/pokemons/:id', (req,res) => {
   const id = parseInt(req.params.id)
   const pokemon = pokemons.find(pokemon => pokemon.id === id)
   res.json(pokemon)
})




app.listen(port, () => console.log(`App is started on http://localhost:${port}`))

