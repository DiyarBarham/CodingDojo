import './App.css';
import { Router } from '@reach/router';
import { Products } from './components/allProducts';
import { Singlee } from './components/Single.jsx';
import { Updateed } from './components/update.jsx';


import React from 'react';
function App() {
  return (
    <div className="flexBox">
      <Router>
        <Products path="/api/products/all" className="flexBox"/>
        <Updateed path="/api/products/:id/edit"/>
        <Singlee path="/api/products/:id" className="flexBox"/>
      </Router>
    </div>
  );
}
export default App;
