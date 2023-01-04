const express = require('express')
const app = express()
const port = parseInt(process.env.PORT) || 8080;


app.get('/', (req, res) => {
  res.send('Hello World, this is a cool docker build to GCP, what a great assessment!')
})

app.listen(port, () => {
  console.log(`App listening on port ${port}`)
})
