import React from 'react';
import './App.css';
import PersonCard from './component/PersonCard';

function App() {
  return (
    <div className="App">
      <PersonCard firstname="Jane" lastname="Doe" age={45} haircolor="Black"/>
      <PersonCard firstname="Smith" lastname="John" age={88} haircolor="Brown"/>
      <PersonCard firstname="Fillmore" lastname="Millard" age={50} haircolor="Brown"/>
      <PersonCard firstname="Smith" lastname="Maria" age={62} haircolor="Brown"/>
    </div>
  );
}

export default App;
