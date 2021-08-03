import './App.css';
import { Router } from '@reach/router';
import React from 'react';
import {Home} from './components/home';
import {New} from './components/new';
import {Edit} from './components/edit';


function App() {
  return (
    <div className="flexBox">
      <h1>Favorite authors</h1>
      <Router>
        <Home path="/"/>
        <New path="/new"/>
        <Edit path="/edit/:id"/>
      </Router>
    </div>
  );
}
export default App;
