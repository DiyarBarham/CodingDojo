import React from 'react';
import $ from "jquery";



const showComponent = (props) => {
    //$(".animation").slideDown();
    $("p").css("display" , "none");
    $("p").fadeIn();
    return (
        <div style={{"border": "1px solid black", "width":"fit-content", "marginLeft":"510px", "marginTop":"10px"}}
        className="animation">
         <p>{props.content}   </p>
        </div>
    )
}

export default showComponent