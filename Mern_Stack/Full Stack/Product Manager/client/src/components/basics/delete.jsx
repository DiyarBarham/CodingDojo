import axios from 'axios';
import { navigate } from '@reach/router'
import React from 'react';

export const Delete = (props) => {
    const deleteproduct = e => {
        e.preventDefault();
        axios.delete('http://localhost:8000/api/products/' + props.productinfo._id+"/delete")
    }

    return (
        <div>
            <p>
            <button onClick={deleteproduct}>delete</button>
            </p>
        </div>
    );
}
