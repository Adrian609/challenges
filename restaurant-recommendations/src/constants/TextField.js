import React from 'react';

const TextField = props => {

  return(
    <div>
      <label>{props.label}
        <input
          value={props.value}
          name={props.name}
          onChange={props.handlerFunction}
          type='text'
        />
      </label>
    </div>
  )
}

export default TextField;
