import React, { Component } from 'react';
import { Link } from 'react-router';
import BackButton from './BackButton.js';
import Layout from './Layout';

class NavBar extends Component {
  constructor(props) {
    super(props)
    this.state = {

    }
  }



  render() {
    return(
      <div>
        <Layout/>
        <span className='center'><Link to='/'> HOME </Link></span>
        <span className='center'><Link to='/projects'> Projects </Link></span>
        <span className='center'><Link to='/resume'> Resume </Link></span>
        <BackButton />
        {this.props.children}
      </div>
    )
  }
}

export default NavBar;
