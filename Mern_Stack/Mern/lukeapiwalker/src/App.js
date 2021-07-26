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
    const findd = (e) => {
      e.preventDefault();
      axios.get('https://swapi.dev/api/'+name+'/'+id)
      .then(response=>{setResponseData(response.data)})
      navigate('/'+name+'/'+id);
    };
  return (
    <div className="App">
        <form onSubmit={ findd }>
            <div>
                <label>Search for: </label>
                <select onChange={ (e) => setname(e.target.value)} >
                    <option value="people">People</option>
                    <option value="planets">Planets</option>
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
