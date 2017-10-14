import React, { Component } from 'react';
import RandomSprout from '../components/RandomSprout';
import SproutsIndex from '../components/SproutsIndex';

class SproutsContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      recipe: "",
      recipes: [],
      longest: ""
    }
    this.getRandomRecipe = this.getRandomRecipe.bind(this)
    this.getAllRecipes = this.getAllRecipes.bind(this)
    this.getLongestRecipe = this.getLongestRecipe.bind(this)
  }

  getRandomRecipe(){
    fetch('http://localhost:4567/api/v1/random-recipe')
    .then(response => response.json())
    .then(response => { this.setState({ recipe: response }) })
    .catch(error => console.log('error! => ', error));
  }

  getAllRecipes(){
    fetch('http://localhost:4567/api/v1/recipes')
    .then(response => response.json())
    .then(response => { this.setState({ recipe: response }) })
    .catch(error => console.log('error! => ', error));
  }

  getLongestRecipe() {
    fetch('http://localhost:4567/api/v1/longest-recipe')
    .then(response => response.json())
    .then(response => { this.setState({ longest: response }) })
    .catch(error => console.log('error! => ', error));
  }

  render(){

    let handleRandomClick = () => {
      this.getRandomRecipe();
    }

    let handleIndexClick = () => {
      this.getAllRecipes();
    }

    let handleLongestClick = () => {
      this.getLongestRecipe();
    }

    return(
      <div className="container">
        <h1>Sprout Fetcher</h1>
        <RandomSprout
          recipe={this.state.recipe}
          handleClick = {handleRandomClick}
        />
        <ul>
          <SproutsIndex
            recipes={this.state.recipes}
            handleClick={handleIndexClick}
          />
        </ul>

        <div className="buttons">
          <button onClick={handleRandomClick} className="btn">Get Random Recipe</button>
          <button onClick={handleIndexClick} className="btn">See All Recipes</button>
          <button onClick={handleLongestClick} className="btn">See Longest Recipe</button>
        </div>
      </div>
    )
  }
}

export default SproutsContainer;
