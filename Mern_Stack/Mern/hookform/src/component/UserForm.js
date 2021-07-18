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

  const [firstnameerror, setFirstnameerror] = useState("");
  const handlefirstName = (e) => {
    setFirstname(e.target.value);
    if(e.target.value.length < 2) {
        setFirstnameerror("field must be at least 2 characters.");
    }else{
        setFirstnameerror("");
    }
}
const [lastnameerror, setlastnameerror] = useState("");
  const handlelastname = (e) => {
    setLastname(e.target.value);
    if(e.target.value.length < 2) {
        setlastnameerror("field must be at least 2 characters.");
    }else{
        setlastnameerror("");
    }
}
const [emailerror, setemailerror] = useState("");
  const handleemail = (e) => {
    setEmail(e.target.value);
    if(e.target.value.length < 5) {
        setemailerror("field must be at least 5 characters.");
    }else{
        setemailerror("");
    }
}
const [passworderror, setpassworderror] = useState("");
  const handlepassword = (e) => {
    setPassword(e.target.value);
    if(e.target.value.length < 8) {
        setpassworderror("field must be at least 8 characters.");
    }else{
        setpassworderror("");
    }
}
const [confirmPassworderror, setconfirmPassworderror] = useState("");
  const handleconfirmPassword = (e) => {
    setConfirmPassword(e.target.value);
    if(e.target.value !== password) {
        setconfirmPassworderror("Password must match.");
    }else{
        setconfirmPassworderror("");
    }
}
  return (
    <div>
              
      <form onSubmit={createUser}>
                    
        <div>
                          <label>firstName: </label>
          <input type="text" onChange={(e) => setFirstname(e.target.value), handlefirstName } />
                      {
                    firstnameerror
                    ?<p style={{color:'red'}}>{ firstnameerror }</p>
                    :<p></p>
                }
        </div>
        <div>
                          <label>lastName: </label>
                          
          <input type="text" onChange={(e) => setLastname(e.target.value), handlelastname} />
                      {
                    lastnameerror
                    ?<p style={{color:'red'}}>{ lastnameerror }</p>
                    :<p></p>
                }
        </div>
                    
        <div>
          <label>Email Address: </label>
          <input type="text" onChange={(e) => setEmail(e.target.value), handleemail} />
          {
                    emailerror
                    ?<p style={{color:'red'}}>{ emailerror }</p>
                    :<p></p>
                }
        </div>
                    
        <div>
          <label>Password: </label>
          <input type="text" onChange={(e) => setPassword(e.target.value), handlepassword} />
          {
                    passworderror
                    ?<p style={{color:'red'}}>{ passworderror }</p>
                    :<p></p>
                }
        </div>
        <div>
          <label>confirmPassword: </label>
          <input
            type="text"
            onChange={(e) => setConfirmPassword(e.target.value), handleconfirmPassword}
          />
          {
                    confirmPassworderror
                    ?<p style={{color:'red'}}>{ confirmPassworderror }</p>
                    :<p></p>
                }
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
