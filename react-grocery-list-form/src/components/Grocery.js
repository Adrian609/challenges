import React from 'react'

const Grocery = (props) => {
  return (
    <li>
      {props.name}
      <button type="button" onClick={props.handleTabClick}>Delete</button>
    </li>
  )
}

export default Grocery
