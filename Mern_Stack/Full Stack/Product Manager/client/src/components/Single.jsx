import axios from 'axios';
import React, {useEffect, useState} from 'react';

export const Singlee = (props) => {
    const [product, setproduct] = useState([]);
    console.log(props.id+"asdfasdfadsfadsfadsf");
    useEffect(
        () => {
            console.log(props.id+"asdfasdfadsfadsfadsf");
            axios.get("http://localhost:8000/api/products/"+props.id)
            .then(res => setproduct(res.data.product))
            .catch(err=>console.log("I am in the catch"))
        }, [product]
    );
    return (
        <div>
            <p>{product.title}</p>
            <p>{"Price: " + product.price}</p>
            <p>{"Description: " + product.desc}</p>
        </div>
    );
};