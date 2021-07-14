import React, {Component} from 'react';

// #region constants

// #endregion

// #region styled-components

// #endregion

// #region functions

// #endregion

// #region component
const propTypes = {};

const defaultProps = {};

/**
 * 
 */
class PersonCard extends React.Component {
constructor(props) {
    super(props);

    this.state = {
    };
}

    render() {
        return <div><h1>{this.props.lastname}, {this.props.firstname}</h1>
                <p>Age: {this.props.age}</p>
                <p>Hair Color: {this.props.haircolor}</p>
        </div>;
    }
}

PersonCard.propTypes = propTypes;
PersonCard.defaultProps = defaultProps;
// #endregion

export default PersonCard;