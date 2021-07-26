import './App.css';
import { navigate } from '@reach/router'
import React, { useState } from  'react';
import { Router } from '@reach/router';
import Find from './Components/find';
import axios from 'axios';
function App() {
    const [name, setname] = useState("people");
    const [id, setid] = useState(""); 
    const [responseData, setResponseData] = useState([]);
    const [keys, setkeys] = useState([]);
    const findd = (e) => {
      e.preventDefault();
      axios.get('https://swapi.dev/api/'+name+'/'+id)
      .then(response=>{setResponseData(response.data)})
      navigate('/'+name+'/'+id);
    };
    axios.get('https://swapi.dev/api/')
      .then(response=>{setkeys(response.data)})    
  return (
    <div className="App">
        <form onSubmit={ findd }>
            <div>
                <label>Search for: </label>
                <select onChange={ (e) => setname(e.target.value)} >
                    {
            Object.keys(keys).map( (key, index) => 
                <option value={ key }>{ key }</option>
            )}
                </select>
                <label> ID: </label> 
                <input type="text" onChange={ (e) => setid(e.target.value) } />
            
                <input type="submit" value="Create User" />
            </div>
        </form>
        <Router>
          <Find path="/:name/:id" asd={responseData}/>
        </Router>
    </div>
  );
}

export default App;
