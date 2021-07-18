import React from 'react'
import { useState } from "react";
const AddingBoxColorForm = () => {

    const [color, setColor] = useState();
    const[width ,setWidht] = useState();
    const[allwidth ,setAllWidht] = useState([]);

    const [allcolor,setAllcolor]= useState([]);
   
    const onsetColor =(e) => {
        setColor({
            ...color,
            [e.target.name]: e.target.value
        })
        setWidht({...width,[e.target.name]:e.target.value})



    }

    const handleSubmit = (x) => {
        x.preventDefault();
        setAllcolor([...allcolor,color])
        setColor({
            colorbox:""
        })
        setAllWidht([...allwidth,width])
        setWidht ({
            widhtBox:""
        })
        
    }
   

    
    
    return (
        <>
        <form onSubmit={ handleSubmit }>
            <h1>color : </h1>
            <input 
                
                placeholder="Enter your color Box here"
                onChange={onsetColor}
                name = 'colorbox'
            >
            </input>

            <input 
                placeholder="Enter your widht Box here" 
                onChange={onsetColor}
                name="widhtBox"
            
            ></input>
            <input type="submit" />
        </form>
        {allwidth.map(
            (fillBox) =>{
                return (
                <div  style={{ backgroundColor:fillBox.colorbox , height:'150px',width:fillBox.widhtBox }}>  
            
                </div>
                )
        
        } )}
      

        </>
    );
};

    
export default AddingBoxColorForm;
