import express from 'express'
import verify from './verify.js'
import cors from 'cors'

const app = express()
app.use(cors())

app.use(verify(process.env.CLIENT_ID))

app.use((error, req, res, next) => {
  console.log('handle error')
  res.status(500).json({ok: false, message: error.message})
})

app.get('/api', (req, res) => {
  console.log(req.user)
  res.json(req.user)
})


app.listen(4000)