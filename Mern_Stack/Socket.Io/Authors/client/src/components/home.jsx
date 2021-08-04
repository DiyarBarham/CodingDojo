import axios from 'axios';
import React, {useEffect, useState} from 'react';
import {Link} from '@reach/router';
import {Delete} from "./delete";
export const Home = (props) => {
    const [authors, setAuthors] = useState([]);
    useEffect(
        () => {
            axios.get("http://localhost:8000/authors")
            .then(res => setAuthors(res.data.authors))
            .catch(err=>console.log("Couldn't recieve all authors in home page"))
        }, [authors]
    );
    return (
        <div>
            
            <Link to={"/new"}><a>Add an author</a></Link>
            <p>We have quotes by:</p>
            <table>

                <tr>
                    <th>Author</th>
                    <th>Actions Available</th>
                </tr>
                {
                    authors.map( (author) =>
                        <tr>
                            <td>{author.name}</td>
                            <td>
                            <Link to={"/edit/"+author._id} params={{ id: author._id }}><button>Edit</button></Link>
                            <Delete id={author._id}></Delete>                            </td>
                        </tr>
                    )
                }
            </table>
        </div>
    );
};