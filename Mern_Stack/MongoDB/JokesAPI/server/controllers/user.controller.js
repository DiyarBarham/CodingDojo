const User = require("../models/user.model");

module.exports.findAllJokes = (req, res) => {
  User.find()
    .then(allDaUsers => res.json({ users: allDaUsers }))
    .catch(err => res.json({ message: "Something went wrong", error: err }));
    // console.log("emitted Function")
  // Get the count of all users


};

module.exports.findOneSingleJoke = (req, res) => {
	User.findOne({ _id: req.params.id })
		.then(oneSingleUser => res.json({ user: oneSingleUser }))
		.catch(err => res.json({ message: "Something went wrong", error: err }));
};

module.exports.ads = (req, res) => {
try{
  User.count().exec(function (err, count) {

  // Get a random entry
  var random = Math.floor(Math.random() * count)

  // Again query all users but only fetch one offset by our random #
  User.findOne().skip(random).exec(
    function (err, result) {
      // Tada! random user
      console.log(result) 
      res.json({ user:result })
      
    })
})
}catch{
  res.json({ message: "Something went", error: err })

}};





// module.exports.findOneRandomJoke1 = (req, res) => {
//   console.log("emitted Function")
//   const thisUser = ()=> {
//     User.count({}, function(err, count){
//     var random = Math.floor(Math.random() * count);
//     User.findOne().skip(random)
//       .then(oneSingleUser => res.json({ user: oneSingleUser }))
//       .catch(err => res.json({ message: "Something went", error: err }))
//     }).then(oneSingleUser => {
//       res.json({ user: thisUser() })
//       console.log("something is Wrong")
//     })
//     .catch(err => res.json({ message: "Something went wrong", error: err }));
// }
// };


module.exports.createNewJoke = (req, res) => {
  User.create(req.body)
    .then(newlyCreatedUser => res.json({ user: newlyCreatedUser }))
    .catch(err => res.json({ message: "Something went wrong", error: err }));
};

module.exports.updateExistingJoke = (req, res) => {
  User.findOneAndUpdate({ _id: req.params.id }, req.body, { new: true })
    .then(updatedUser => res.json({ user: updatedUser }))
    .catch(err => res.json({ message: "Something went wrong", error: err }));
};

module.exports.deleteAnExistingJoke = (req, res) => {
  User.deleteOne({ _id: req.params.id })
    .then(result => res.json({ result: result }))
    .catch(err => res.json({ message: "Something went wrong", error: err }));
};
