import express from 'express'

const app = express()
const port = 3006

app.get('/', (req,res) => {
    res.jsonp({'project': 'express-nginx 2022', 'name': process?.env?.name ?? 'set name env'})
})

app.get('/about', (req, res) => {
  res.json({
    data: 'this is about page this'
  })
})

app.listen(port, () => {
    console.log('express-nginx serve on 127.0.0.1:3006')
})