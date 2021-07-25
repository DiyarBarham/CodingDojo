import React,{useState} from 'react'


const Pokis = (props) => {
    const [Poki, setPoki] = useState([]);
    
    const name = () => {
        fetch('https://pokeapi.co/api/v2/pokemon?limit=807')
        .then(response => response.json() )
        .then(response => setPoki(response.results))
    }
    
    return (
        <>
        <button onClick = { () => name() }> Click me </button>
        <div>
        { Poki.map((Poki, index) => {
                return (<div key={index}>{Poki.name}</div>)
            })}
        </div>
    </>
    )
}

export default Pokis