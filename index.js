// imports 
const express = require("express");
// Initializations 
const app  = express();
const PORT = process.env.PORT || 3000;

app.get("/", (req,res) => {
    res.json({
        message: "Hello world"
    });
});

app.get("/healthcheck", (req,res) => {
    res.json({
        error   : false,
        system  : "functional"   
    });
});

// start server
app.listen(PORT, () => console.log(`Listening on port ${PORT}`));