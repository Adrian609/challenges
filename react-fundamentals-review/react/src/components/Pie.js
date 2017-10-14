import React from 'react';

const Pie = props => {
  return (
    <li onClick={props.handleClick} className={props.classString}> {props.name} </li>
  )
}

export default Pie;
