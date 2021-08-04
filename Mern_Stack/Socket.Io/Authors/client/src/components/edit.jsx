import React, { useEffect, useState } from 'react'
import axios from 'axios';
import { navigate } from '@reach/router';
export const Edit = (props) => {
    const  id  = props.id;
    const [name, setName] = useState('');
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

    useEffect(() => {
        axios.get('http://localhost:8000/author/' + id)
            .then(res => {
                setName(res.data.author.name);
            })
    }, [])
    const updateAuthor = e => {
        e.preventDefault();
        // if (validateName(name)){
        axios.put('http://localhost:8000/edit/' + id, {name})
        .then(res=>navigate('/'))
        .catch(err => {
            const errStr =  err.response.data.error.errors.name.message
            setSubmitErr(errStr);
        });
    // }
    }
    return (
        <div>
            <p>Edit this author</p>
            <form onSubmit={updateAuthor}>
                <p>
                    <label>Name</label><br />
                    <input type="text" 
                    name="name" 
                    value={name} 
                    onChange={(e) => { validateName(e.target.value) }} />
                    {
                    nameErr && 
                    <p style={{color: 'red'}}>{nameErr}</p>
                }
                </p>

                <input type="submit" />
                {
                submitErr && 
                <p style={{color: 'red'}}>{submitErr}</p>
            }
            </form>
        </div>
    )
}
