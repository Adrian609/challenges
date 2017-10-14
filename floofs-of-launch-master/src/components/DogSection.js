import React from 'react';
import DogTile from './DogTile';

const DogSection = props => {
  let dogs = props.dogs.map(dog => {
    return(
      <DogTile
        dog={dog}
        key={dog.id}
      />
    )
  });
  return(
    <div>
      {dogs}
    </div>
  )
}

export default DogSection
