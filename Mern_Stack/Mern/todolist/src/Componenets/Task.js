import {useState} from 'react'
import $ from "jquery";
import React from 'react';



const Task = (props) => {
    

 //const [isCompleted, setIsCompleted] = useState(false);

//  const completingTasks = (e , i) => {

//     // props.completed(e.target.checked);
//     //$(e.target).css("text-decoration", "line-through");

//  } 
    
    return (
        <div>
            <form >
            {props.textArray.map( (tex, i) => {
                return( 
                    <div>
                <p style={ tex.isChecked ? {"text-decoration":"line-through"} : {"color":"red"}}  key={i}>
                    {tex.text}
                    <input id={i} type="checkbox" checked={tex.isChecked} onChange={ (e) => props.checkedList(e, i)}/>
                
                 
                 <button onClick={(e) => props.deleteTask(i)}>Delete</button></p>
                 </div>
                )
            }
            )}
            </form>

          

        </div>
    )
}

export default Task