const UserController = require("../controllers/user.controller");

module.exports = app => {
  app.get("/api/jokes/", UserController.findAllJokes);
  app.get("/api/jokes/random", UserController.ads);
  app.get("/api/jokes/:id", UserController.findOneSingleJoke);
  app.post("/api/jokes/new", UserController.createNewJoke);
  app.put("/api/jokes/update/:id", UserController.updateExistingJoke);
  app.delete("/api/jokes/delete/:id", UserController.deleteAnExistingJoke);
};