import React from 'react';
import Question from '../components/Question';

class App extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      selectedQuestion: null,
      data: []
    }

    this.toggleQuestionSelect = this.toggleQuestionSelect.bind(this)
  }

  toggleQuestionSelect(id) {
    if (id === this.state.selectedQuestion) {
      this.setState({ selectedQuestion: null})
    } else {
      this.setState({ selectedQuestion: id })
    }
  }

  componentWillMount() {
    fetch('http://localhost:3000/api/v1/questions')
    .then(response => response.json())
    .then(response => { this.setState({ data: response }) })
    .catch(error => console.log('error! => ', error));
  }

  render() {
    let questions = this.state.data.map(question => {
      let selected;
      if (this.state.selectedQuestion === question.id) {
        selected = true
      }

      let handleClick = () => { this.toggleQuestionSelect(question.id) }

      return(
        <Question
          key={question.id}
          question={question.question}
          answer={question.answer}
          selected={selected}
          handleClick={handleClick}
        />
      )
    })

    return(
      <div className='page'>
        <h1>We're Here To Help</h1>
        <div className='question-list'>
          {questions}
        </div>
      </div>
    )
  }
}

export default App;
