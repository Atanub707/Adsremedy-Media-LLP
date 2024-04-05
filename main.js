const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('1 Hello World Save And Refresh the page no need to build the code every time. Its working because I am adding "nodemon" in dockerfile its refresh the page in every save its help the developer who want to test the code throught dockerfile into the local . thank you happy code .  !')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
