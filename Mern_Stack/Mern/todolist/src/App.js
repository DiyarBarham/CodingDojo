
import {useState} from 'react';
import './App.css';
import AddTask from './Componenets/AddTask';
import Task from './Componenets/Task';
import $ from "jquery";
import React from 'react';

function App() {
  const [textt, setTextt] = useState([]);


  const addText = (text) => {
    const task={text , "isChecked":false}
    setTextt([...textt , task]);

  }
  const deleteTask = (i) => {

   setTextt([...textt.slice(0, i), ...textt.slice(i + 1)])
  }

  const checkedList = (e, i ) =>{

    setTextt([...textt.slice(0,i) , {...textt[i], "isChecked": e.target.checked }, ...textt.slice(i+1)]);
    $(e.target).css("text-decoration", "line-through");
  }

  return (
    <div className="App">
     <AddTask addText={addText} ></AddTask>
     <Task textArray={textt} checkedList={checkedList}  deleteTask={deleteTask} ></Task>
    </div>
  );
}

export default App;