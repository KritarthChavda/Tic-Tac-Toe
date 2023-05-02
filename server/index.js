//importing modules
const { Socket } = require('dgram');
const express = require('express');
const http = require('http');
const mongoose = require("mongoose");

const app = express();
const port  = process.env.PORT || 3000;
var server = http.createServer(app);

var io = require("socket.io")(server);


//we use this when the data form the client 
//side is going to the server side 
//called middle ware
//client -> middleware  -> server
app.use(express.json());

const DB =  "mongodb+srv://kritarthchavda:Kritarth10@cluster0.fcawvqw.mongodb.net/?retryWrites=true&w=majority";

io.on('connection',(Socket)=> {
    console.log("connected");
});

mongoose.connect(DB).then(() => {
    console.log("Connection succesful")

}).catch((e) => {
    console.log(e);
});



server.listen(port, '0.0.0.0', () =>{
    console.log('Server started and running on port'+port);
});