import './App.css';
import React, {useState} from "react";
import UserForm from './component/UserForm';
function App() {
  const [state, setState] = useState({
    firstName: '',
    lastName: '',
    email: '',
    password: '',
    confirmPassword: ''
  });
  return (
    <div className="App">
      <UserForm inputs={state} setInputs={setState}/>
    </div>
  );
}

export default App;
