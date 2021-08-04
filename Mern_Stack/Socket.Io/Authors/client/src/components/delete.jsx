import axios from 'axios';
import React from 'react';

export const Delete = (props) => {
    const deleteauthor = e => {
        e.preventDefault();
        axios.delete('http://localhost:8000/delete/' + props.id)
    }

    return (
        <div>
            <p>
            <button onClick={deleteauthor}>delete</button>
            </p>
        </div>
    );
}
