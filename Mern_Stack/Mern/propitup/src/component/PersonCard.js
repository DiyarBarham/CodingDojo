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
        age: this.props.age
    };

}
    increase=()=>{
        this.setState({age:this.state.age+1});
    }

    render() {
        return <div><h1>{this.props.lastname}, {this.props.firstname}</h1>
                <p>Age: {this.state.age}</p>
                <p>Hair Color: {this.props.haircolor}</p>
                <button onClick={this.increase}>Birthday Button for {this.props.firstname} {this.props.lastname}</button>
        </div>;
    }
}

PersonCard.propTypes = propTypes;
PersonCard.defaultProps = defaultProps;
// #endregion

export default PersonCard;