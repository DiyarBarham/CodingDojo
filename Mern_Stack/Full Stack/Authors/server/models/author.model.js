const mongoose = require("mongoose");

const AuthorSchema = new mongoose.Schema({
	name: {
		type: String,
		required: [true, "Name cannot be emtpy"],
		minlength: [3, "the Name need to 3 chars min."]
	},
});

const author = mongoose.model("author", AuthorSchema);

module.exports = author;