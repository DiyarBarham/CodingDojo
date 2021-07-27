var faker = require("faker");
const express = require("express");
const app = express();
const port = 8000;


class User {
  constructor(){
    this.firstname = faker.name.firstName();
    this.lastname = faker.name.lastName();
    this.phonenumber = faker.phone.phoneNumber();
    this.email = faker.internet.email();
    this.password = faker.internet.password();
  }
}

class Company{
  constructor(){
    this.name = faker.company.companyName();
    this.address = {
      'street': faker.address.streetName(),
      'city': faker.address.cityName(),
      'state': faker.address.state(),
      'zipcode': faker.address.zipCode(),
      'country': faker.address.country()
    }
  }
}
app.use( express.json() );
app.use( express.urlencoded({ extended: true }) );
// req is short for request
// res is short for response
app.get("/api", (req, res) => {
  res.send("Our express api server is now sending this over to the browser");
});

const server = app.listen(8000, () =>
  console.log(`Server is locked and loaded on port ${server.address().port}!`)
);
app.get("/api/users/new", (req, res) => {
  res.json( new User() );
});
app.get("/api/companies/new", (req, res) => {
  res.json( new Company() );
});
app.get("/api/user/company", (req, res) => {
  res.json({'User': new User(),
    'Company': new Company()
  });
});