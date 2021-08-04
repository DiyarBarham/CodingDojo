import './App.css';
import { Router } from '@reach/router';
import React from 'react';
import {Home} from './components/chat';
import {New} from './components/new';
import {Edit} from './components/edit';


function App() {
  return (
    <div className="flexBox">
      <h1>Favorite authors</h1>
      <Home/>
    </div>
  );
}
export default App;
