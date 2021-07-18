import React from 'react'
import { useState } from 'react';

const Test = (props) => {

     const [color, setColor] = useState(
         {colorBox:""}
     )
    

     const [allcolor, setAllcolor] = useState([]);


    const handesl = (x) => {
        setAllcolor([])

    }

    const createBox = (x) =>{

    }


    return (
        <div>
            <form onSubmit={createBox}>
            <input
            onChange={handesl}           
            > </input>
            </form>
        </div>
        
    )
}

export default Test
