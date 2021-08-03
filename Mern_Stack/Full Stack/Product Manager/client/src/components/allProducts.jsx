import React, {useEffect, useState} from 'react';
import axios from 'axios';
import { Card } from './basics/card';
import { ProductForm } from './productForm';

export const Products = (props) => {
    const {className} = props;
    const [all, setAllProducts] = useState([]);

    useEffect(
        () => {
            axios.get("http://localhost:8000/api/products/all")
            .then(res => setAllProducts(res.data.products))
            .catch(err=>console.log("I am in the4 catch"))
        }, [all]
    );
    
    return (
        <div>
            <ProductForm className="card" />
            <div className={className}>
                {
                    all.map( (product) =>
                        <Card className="box" productinfo={product} key={product._id} />
                    )
                }
            </div>
        </div>
    );
};