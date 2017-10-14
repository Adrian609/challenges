import React, { Component } from 'react';
import StepTile from '../components/StepTile';
import ItemTile from '../components/ItemTile';
import FetchButton from '../components/FetchButton';

class InstructionsContainer
 extends Component {
  constructor(props) {
    super(props);
    this.state = {
      id: null
    };

    this.setId = this.setId.bind(this);
  }

  setId(state) {
    this.setState({id: state});
  }

  render(){

    let supplies = this.props.data.supplies
    let directions = this.props.data.directions

    let items = supplies.map(supply => {
      return(
        <ItemTile
          item={supply.item}
          key={supply.id}
          id={supply.id}
        />
      )
    })

    let steps = directions.map(direction => {
      let className;
      if(direction.id === this.state.id) {
        className='selected'
      }

      return(
        <StepTile
          className={className}
          step={direction.step}
          key={direction.id}
          id={direction.id}
          setSelectedStep={this.setId}
        />
      )
    })


    return(
      <div>
        <h1>How To {this.props.data.activity}</h1>
        <h3>Supplies:</h3>
        <ul>
          {items}
        </ul>
        <h3>Instructions:</h3>
        <ol>
          {steps}
        </ol>
        <FetchButton />
      </div>
    )
  }
}

export default InstructionsContainer;
