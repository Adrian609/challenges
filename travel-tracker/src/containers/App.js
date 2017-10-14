import React, { Component } from 'react';
import data from '../constants/data'
import styles from '../stylesheets/index.css'
import Destination from '../constants/Destination'

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedId: ""
    }
    this.handleClick = this.handleClick.bind(this)
  }

  handleClick(newId) {
    let setId;
    if (this.state.selectedId !== newId) {
      setId = newId;
    }
    this.setState({ selectedId: setId })
  }

  render() {

    let destinationList = this.props.data.places.map((destination) => {
      let classString
      let key = destination.id
      let id = destination.id
      let name = destination.name

      if (destination.id === this.state.selectedId) {
        classString='selected'
      }

      let onClick = () => this.handleClick(destination.id)

      return(
        <Destination
          //selectedId = {this.state.selectedId} // MUST be this.state
          key = {destination.id}
          id = {destination.id}
          name = {destination.name}
          classString = {classString}
          handleClick = {onClick}
        />
      )
    });

    return (
      <div id="wishlist-div">
        <div className="row">
          <div className="small-12 small-centered columns text-center">
            <h3 className = 'header'>Wanderlust Wishlist</h3>
            {destinationList}
          </div>
        </div>
      </div>
    );
  }
}

export default App;
