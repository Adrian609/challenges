import React from 'react';

const DogTile = props => {
  return(
    <div>
      <h1>{props.dog.name}</h1>
      <p>Breed: {props.dog.breed}</p>
      <p>Human: {props.dog.human}</p>
      <img src={`${props.dog.image}`} />
    </div>
  )
};

export default DogTile
