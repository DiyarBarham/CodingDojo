import axios from 'axios';
import React, {useEffect, useState} from 'react';
import {Link} from '@reach/router';
import { navigate } from '@reach/router'
export const New = (props) => {
    const [name, setName] = useState("");
    const [nameErr, setNameErr] = useState("");
    const [submitErr, setSubmitErr] = useState("");
    
    const nameErrMesgs = {
        empty: "Name cannot be empty",
        minLength: "Name have to be 3 char or more"
    };

    const validateName = (value) => {
        setName(value);
        if(value.length < 1) {
            setNameErr(nameErrMesgs.empty);
            return false;
        } else if (value.length < 3) {
            setNameErr(nameErrMesgs.minLength);
            return false;
        } else {
            setNameErr("");
            return true;
        }
    };

    const submitErrMesgs = {
        noSubmit: "Please fix the errors above before submitting the form"
    };

    const createAuthor = (e) => {
        e.preventDefault();
        if(validateName(name)){
            const newAuthor = {name: name};
            axios.post('http://localhost:8000/new', newAuthor)
            .then(res=> {
                setName("");
                setSubmitErr("");
                navigate('/');
            })
            .catch(err => {
                const errStr =  err.response.data.error.errors.name.message
                setSubmitErr(errStr);
            })
        } else {
            setSubmitErr(submitErrMesgs.noSubmit);
        }
    };

    return(
        <div>
        <Link to={"/"}><a>Home</a></Link>
        <p>Add a new Author</p>
        <form onSubmit={ createAuthor } className={props.className}>
            <div>
                <input placeholder="Name" type="text" onChange={ (e) => validateName(e.target.value)} value={name} />
                {
                    nameErr && 
                    <p style={{color: 'red'}}>{nameErr}</p>
                }
            </div>
            
            <input type="submit" value="Create Author" />
            {
                submitErr && 
                <p style={{color: 'red'}}>{submitErr}</p>
            }
        </form>
        </div>
    );
};