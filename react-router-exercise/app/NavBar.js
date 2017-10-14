import React, { Component } from 'react';
import { Link } from 'react-router';

class NavBar extends Component{
  constructor(props){
    super(props);
    this.state = {

    }
  }

  render(){
    return(
      <div>
        <p><Link to='/'> HOME </Link></p>
        <p><Link to='/greeting'> Greeting </Link></p>
        <p><Link to='/goodbye'> Goodbye </Link></p>
        <p><Link to='/customgreeting'> CustomGreeting </Link></p>
        <h1 className="pageTitle">Greetings</h1>
        { this.props.children }
      </div>
    )
  }
}

export default NavBar;
