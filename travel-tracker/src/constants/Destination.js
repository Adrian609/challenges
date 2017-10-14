import React from 'react';

const Destination = (props) => {

  let handleClick = () => {
    props.handleClick(props.id)
  }

  return(
    <div>
      <li onClick={handleClick} className={props.classString}> {props.name} </li>
    </div>
  )
}

export default Destination;
