import React, {Component} from 'react';

// #region constants

// #endregion

// #region styled-components

// #endregion

// #region functions

// #endregion

// #region component

/**
 * 
 */
const PersonCard = props =>{
        return (
        <div>
            <h1>{props.lastname}, {props.firstname}</h1>
                <p>Age: {props.age}</p>
                <p>Hair Color: {props.haircolor}</p>
        </div>);
    }
// #endregion

export default PersonCard;