const express = require('express')

const app = express();

const PORT = 8000;

app.get("/", (req, res) => {
   return res.json({message:"HELLO FROM DOCKER FILE"})
});

app.listen(PORT, () => console.log(`Server Listen at 8000`))