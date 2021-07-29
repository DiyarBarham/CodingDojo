const UserController = require("../controllers/user.controller");

module.exports = app => {
  app.post("/api/products/new", UserController.createNewProduct);
  app.get("/api/products/all", UserController.findAllProducts);
  app.get("/api/products/:id", UserController.findProduct);
};