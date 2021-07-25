import {useState} from 'react';
import React from 'react';

const AddTask = (props) => {
    const [text, setText] = useState("");
  //  const [isCompleted, setIsCompleted] = useState(false);
    
    const handleSubmit =(e) => {
    e.preventDefault();
  
    props.addText(text);
    setText("");
    }

    const addTask = (e) =>{
        setText( e.target.value);

    }
    
    return (            
            <form onSubmit={handleSubmit}>
                <input type="text" value={text} onChange={ addTask }/>

                <button type="submit">add</button>
            </form> 
            
    )
}
export default AddTask