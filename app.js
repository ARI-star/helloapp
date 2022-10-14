const express = require('express'); 

const app = express(); 


app.get('/', (req, res)=>{
    res.send('<h2> hello word </h2>')
})

const port = process.env.PORT ||3000
app.listen(port, ()=>{console.log('The server is runnin on 3000 ...')})