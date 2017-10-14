import React, { Component } from 'react'
import GroceryForm from './GroceryForm'
import GroceryList from './GroceryList'

class App extends Component {
  constructor(props) {
    super(props)
    this.state = {
      groceries: [],
      name: '',
      selectedId: null
    } // end this.state
    this.handleChange = this.handleChange.bind(this)
    this.handleFormSubmit = this.handleFormSubmit.bind(this)
    this.handleButtonClick = this.handleButtonClick.bind(this)
  } // end constructor

  handleChange(event) {
    let newName = event.target.value
    this.setState({ name: newName })
  }
  handleFormSubmit(event) {
    event.preventDefault()
    let newId = this.state.groceries.length + 1
    let newGrocery = {
      id: newId,
      name: this.state.name
    }
    let newGroceries = this.state.groceries.concat(newGrocery)

    this.setState({groceries: newGroceries, name: ""})
  }

  handleButtonClick(id) {
    let newGroceries = this.state.groceries.filter(grocery => {
        return grocery.id !== this.state.selectedId
    })
    this.setState({ groceries: newGroceries })
  }



  render() {
    console.log("App's state name value: ", this.state.name)

    return(
      <div>
        <h1>Grocery List React</h1>
        <GroceryForm
          handleFormSubmit={this.handleFormSubmit}
          handleChange={this.handleChange}
          name={this.state.name}
        />
        <GroceryList
          groceries={this.state.groceries}
          handleButtonClick={this.handleButtonClick}
        />
      </div>
    )
  }
}

export default App
