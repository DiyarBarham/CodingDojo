import React from 'react';
import {Link} from '@reach/router';
import {Delete} from './delete';
export const Card = (props) => {
    const {className, productinfo} = props;
    
    
    return (
        <div className={className}>
            <p><Link to={"/api/products/"+productinfo._id} params={{ id: productinfo._id }}>{"Title: " + productinfo.title}</Link></p>
            <p>{"Price: " + productinfo.price}</p>
            <p>{"Description: " + productinfo.desc}</p>
            <p>
            <Link to={"/api/products/"+productinfo._id+"/edit"} params={{ id: productinfo._id }}><button>edit</button></Link>
            <Delete productinfo={productinfo}></Delete>
            </p>
        </div>
    );
};