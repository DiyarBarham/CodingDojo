const Author = require("../models/author.model");

module.exports.findAllAuthors = (req, res) => {
    Author.find()
      .then(all => res.json({ authors: all }))
      .catch(err => res.json({ message: "Something went wrong", error: err }));
  };

module.exports.createNewAuthor = (req, res) => {
    Author.create(req.body)
      .then(newlyCreatedAuthor => res.json({ Author: newlyCreatedAuthor }))
      .catch(err => res.status(400).json({ message: "Something went wrong", error: err }));
  };

module.exports.findAuthor = (req, res) => {
	Author.findOne({ _id: req.params.id })
		.then(findAuthor => res.json({ author: findAuthor }))
		.catch(err => res.json({ message: "Something went wrong", error: err }));
};

module.exports.updateAuthor = (request, response) => {
    Author.findOneAndUpdate({_id: request.params.id}, request.body, {new:true, runValidators: true})
      .then(updatedAuthor => {
        console.log(updatedAuthor);
        response.json(updatedAuthor);})
      .catch(err => {
          console.log("I have an error here");
          response.status(400).json({ message: "Something went wrong", error: err })
        })
}

module.exports.deleteAuthor = (request, response) => {
    Author.deleteOne({ _id: request.params.id })
        .then(deleteConfirmation => response.json(deleteConfirmation))
        .catch(err => response.json(err))
  }