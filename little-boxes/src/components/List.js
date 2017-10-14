import React from 'react';

const List = props => {
  let space =
    props.list.map((item) =>
      <li>{item}</li>
    );

  return (
    <div className='box list'>
      <h1>{props.header}</h1>
      <ul>{space}</ul>
    </div>
  )
}

export default List;
