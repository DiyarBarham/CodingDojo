import React, { useEffect, useState } from 'react';

const Find = (props) => {
  return (
    <div>
      {
        
        props.name=="people"?
        <div><h1>{props.asd.name}</h1>
        <h3>height: {props.asd.height}</h3>
        <h3>Mass: {props.asd.mass}</h3>
        <h3>Hair Color: {props.asd.hair_color}</h3>
        <h3>Skin Color: {props.asd.skin_color}</h3></div>
    : 
    <div>
      <h1>{props.asd.name}</h1>
    <h3>Climate: {props.asd.climate}</h3>
    <h3>Terrain: {props.asd.terrain}</h3>
    <h3>Surface Water: {props.asd.surface_water}</h3>
    <h3>Population: {props.asd.population}</h3> 
    </div>
      }
    
    </div>
    );
}
export default Find;