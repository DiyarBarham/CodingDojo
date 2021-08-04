const AuthorController = require("../controllers/author.controller");

module.exports = app => {
    app.get("/authors", AuthorController.findAllAuthors);
    app.post("/new", AuthorController.createNewAuthor);
    app.get("/author/:id", AuthorController.findAuthor);
    app.put('/edit/:id', AuthorController.updateAuthor);
    app.delete('/delete/:id', AuthorController.deleteAuthor);
};