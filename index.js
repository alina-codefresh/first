const express = require('express');

const app = express()

const PORT = Number(process.env.PORT || 8080)

app.get('/', (req, res) => {
    console.log(`Query params: ${JSON.stringify(req.query)}`)
    res.json(req.query)
})

app.listen(PORT, () => {
    console.log(`listening on port: ${PORT}`)
})