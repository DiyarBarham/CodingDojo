import React, { useState } from "react";

const UserForm = (props) => {
  const [firstname, setFirstname] = useState("");
  const [lastname, setLastname] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");

  const createUser = (e) => {
    e.preventDefault();
    const newUser = { firstname, lastname, email, password, confirmPassword };
    console.log("Welcome", newUser);
  };

  return (
    <div>
              
      <form onSubmit={createUser}>
                    
        <div>
                          <label>firstName: </label>
                          
          <input type="text" onChange={(e) => setFirstname(e.target.value)} />
                      
        </div>
        <div>
                          <label>lastName: </label>
                          
          <input type="text" onChange={(e) => setLastname(e.target.value)} />
                      
        </div>
                    
        <div>
          <label>Email Address: </label>
          <input type="text" onChange={(e) => setEmail(e.target.value)} />
        </div>
                    
        <div>
          <label>Password: </label>
          <input type="text" onChange={(e) => setPassword(e.target.value)} />
        </div>
        <div>
          <label>confirmPassword: </label>
          <input
            type="text"
            onChange={(e) => setConfirmPassword(e.target.value)}
          />
        </div>
                    
        <input type="submit" value="Create User" />
                
      </form>
      <div>
        <div>
          <label>firstName: </label>    <label>{firstname} </label>      
        </div>
        <div>
          <label>lastName: </label>         <label>{lastname} </label>  
        </div>
          
        <div>
          <label>Email Address: </label>   <label>{email} </label>  
        </div>
                    
        <div>
          <label>Password: </label>    <label>{password} </label>  
        </div>
        <div>
          <label>confirmPassword: </label>   <label>{confirmPassword} </label>  
        </div>
      </div>
    </div>
  );
};

export default UserForm;
