import React from 'react';
import DogSection from './DogSection';
import CatSection from './CatSection';


const App = props => {
  return(
    <div>
      <DogSection
        dogs={props.data.dogs}
      />
      <CatSection
        cats={props.data.cats}
      />
    </div>
  )
}

export default App;
