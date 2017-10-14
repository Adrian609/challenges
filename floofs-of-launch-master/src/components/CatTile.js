import React from 'react';

const CatTile = props => {
  return(
    <div>
      <h1>{props.cat.name}</h1>
      <p>Personality: {props.cat.personality}</p>
      <p>Human: {props.cat.human}</p>
      <img src={`${props.cat.image}`} />
    </div>
  )
};

export default CatTile
