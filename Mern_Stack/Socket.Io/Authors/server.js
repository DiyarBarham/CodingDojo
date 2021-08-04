const express = require('express');
const cors = require('cors');
const app = express();
const port = 8000;
require("./server/config/mongoose.config");

app.use(express.json(), express.urlencoded({ extended: true }));
app.use(cors());

const AllMyAuthorsRoutes = require("./server/routes/author.routes");
AllMyAuthorsRoutes(app);
const server = app.listen(port, () => console.log(`Listening on port: ${port}`) );
const io = require('socket.io')(server, { cors: true });
io.on("connection", socket =>{
    console.log("Nice to meet you");
    socket.emit("Welcome", "hiiii");
});