// src/components/Header.js
import React from 'react';

const Header = props => {
  return(
    <h1 id="special-header" className="header" onClick={ (event) => { alert('Roar!')} }>
      I am a React element! Hear me roar!!
    </h1>
  );
};

export default Header;
