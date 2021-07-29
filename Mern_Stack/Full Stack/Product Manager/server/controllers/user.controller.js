const Product = require("../models/user.model");

module.exports.createNewProduct = (req, res) => {
  Product.create(req.body)
    .then(newlyCreatedProduct => res.json({ Product: newlyCreatedProduct }))
    .catch(err => res.status(400).json({ message: "Something went wrong", error: err }));
};
module.exports.findAllProducts = (req, res) => {
  Product.find()
    .then(all => res.json({ products: all }))
    .catch(err => res.json({ message: "Something went wrong", error: err }));
};
module.exports.findProduct = (req, res) => {
	Product.findOne({ _id: req.params.id })
		.then(findProduct => res.json({ product: findProduct }))
		.catch(err => res.json({ message: "Something went wrong", error: err }));
};
