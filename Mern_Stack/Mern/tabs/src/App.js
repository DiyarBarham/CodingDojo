import './App.css';
import {useState} from 'react'
import TabsComponent from './components/TabsComponent';
import ShowComponent from "./components/ShowComponent";
import React from 'react';

function App() {
  const [tabs , setTabs] =useState("");

  const tabHandler= (tabValue) =>{
    //console.log(tabValue);
    setTabs(tabValue);

  
  }
  return (
    <div className="App"> 
      <TabsComponent tab={tabHandler}/>
      <ShowComponent content={tabs}/>
    </div>
  );
}

export default App;