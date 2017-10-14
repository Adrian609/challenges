import React, { Component } from 'react';
import TextField from '../constants/TextField'

class ReviewForm extends Component {
  constructor(props){
    super(props)
    this.state = {
      errors: {},
      name: '',
      rating: '',
      review: ''
    }
    this.handleName = this.handleName.bind(this);
    this.handleRating = this.handleRating.bind(this);
    this.handleReview = this.handleReview.bind(this);
    this.validateName = this.validateName.bind(this);
    this.validateRating = this.validateRating.bind(this);
    this.validateReview = this.validateReview.bind(this);
    this.handleFormSubmit = this.handleFormSubmit.bind(this);

  }

  handleName(e) {
    console.log('handling name');
    this.validateName(e.target.value)
    this.setState({ name: e.target.value })
  }

  handleRating(e) {
    console.log('handling rating');
    this.validateRating(e.target.value)
    this.setState({ rating: e.target.value })
  }

  handleReview(e) {
    console.log('handling review');
    this.validateReview(e.target.value)
    this.setState({ review: e.target.value })
  }

  validateName(name) {
    if (name === '') {
      let newError = { name: 'Name field may not be blank.' }
      this.setState({ errors: Object.assign(this.state.errors, newError) })
      return false
    } else {
      let errorState = this.state.errors
      delete errorState.lastName
      this.setState({ errors: errorState })
      return true
    }
  }

  validateRating(rating) {
    if (rating === '') {
      let newError = { rating: 'Rating field may not be blank.' }
      this.setState({ errors: Object.assign(this.state.errors, newError) })
      return false
    } else {
      let errorState = this.state.errors
      delete errorState.lastName
      this.setState({ errors: errorState })
      return true
    }
  }

  validateReview(review) {
    if (review === '') {
      let newError = { review: 'Review field may not be blank.' }
      this.setState({ errors: Object.assign(this.state.errors, newError) })
      return false
    } else {
      let errorState = this.state.errors
      delete errorState.address
      this.setState({ errors: errorState })
      return true
    }
  }

  handleFormSubmit(event) {
    event.preventDefault();
    if(
      this.validateName(this.state.name) &&
      this.validateRating(this.state.rating) &&
      this.validateReview(this.state.review)
    ) {
      let formPayLoad = {
        name: this.state.name,
        rating: this.state.rating,
        review: this.state.review
      };
      this.props.addReview(formPayLoad);
    }
  }

  render() {
    let errorDiv;
    let errorItems;
    if (Object.keys(this.state.errors).length > 0) {
      errorItems = Object.values(this.state.errors).map(error => {
        return(<li key={error}>{error}</li>)
      })
      errorDiv = <div className="callout alert">{errorItems}</div>
    }
    return(
      <div>
        <h3>Submit a review!</h3>
        {errorDiv}
        <form onSubmit={this.handleFormSubmit}>
          <TextField
            label='Name'
            name='name'
            handlerFunction={this.handleName}
            type='text'
            value={props.content}
          />
          <TextField
            label='Rating'
            name='rating'
            handlerFunction={this.handleRating}
            type='text'
            value={props.content}
          />
          <TextField
            label='Review'
            name='review'
            handlerFunction={this.handleReview}
            type='text'
            value={props.content}
          />
          <div>
            <input className="button" type="submit" value="Submit" />
          </div>
        </form>
      </div>
    )
  }
}

export default ReviewForm;
