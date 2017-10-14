import React from 'react';
import GroceryItem from './GroceryItem';

const GroceryList = props => {

  let groceryData = [
    { id: 1, name: "Oranges" },
    { id: 2, name: "Bananas" },
    { id: 3, name: "Bread" }
  ];

  let buttons = groceryData.map(item => {
    return(
      <GroceryItem
        key={item.id}
        name={item.name}
        handleButtonClick={ (event) => { alert(item.name + 'was clicked')} }
      />
    )
  });

  return(
    <ul>
      {buttons}
    </ul>
  )
}

export default GroceryList;
