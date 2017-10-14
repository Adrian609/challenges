import React, { Component } from 'react'
import FormContainer from './FormContainer'
import TrackSubmissions from '../components/TrackSubmissions';

class App extends Component {
  constructor(props) {
    super(props)
    this.state = {
      data: []
    }
    this.addSubmissions = this.addSubmissions.bind(this)
  }

  addSubmissions(submission) {
    this.setState({ data: this.state.data.concat(submission) })
  }

  render() {
    return (
      <div className="row">
        <div className="medium-6 medium-offset-3 small-12 columns">
          <h1 className="text-center">Form</h1>
          <FormContainer addSubmissions={this.addSubmissions} />
          <TrackSubmissions data={this.state.data} />
        </div>
      </div>
    );
  }
}

export default App
