import React,{useState} from 'react'
import axios from 'axios';

const Pokis = (props) => {
    const [Poki, setPoki] = useState([]);
    
    const name = () => {
        axios.get('https://pokeapi.co/api/v2/pokemon?limit=807')
        .then(response =>setPoki(response.data.results) )
    }
    
    return (
        <div>
            <button onClick = { () => name() }> Click me </button>
           <div>
            { Poki.map((Poki, index) => {
                    return (<div key={index}>{Poki.name}</div>)
                })}
            </div>
        </div>
    )
}

export default Pokis