import React from 'react';
import Home from './components/home';
import { Router } from '@reach/router';
import Number from './components/number';
import Word from './components/word';

function App() {
  return (
    <div className="App">
        <Router>
          <Home path="/home"/>
          <Number path="/:num"/>
          <Word path="/:word/:color/:back"/>
        </Router>
    </div>
  );
}
export default App;
