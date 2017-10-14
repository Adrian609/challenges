import React from 'react';
import Answer from './Answer'
// import '../../../public/home.css';


const Answers = (props) => {

  let answers = props.data.map((answer) => {

    let className;
    let key=answer.id
    let id=answer.id
    let choice=answer.body
    let questionId=answer.question_id
    let correct=answer.correct
    let selectedAnswer=props.selectedAnswer

    if(answer.id === props.selectedAnswer) {
      className="button expanded primary"
    } else {
      className="button expanded secondary"
    }

    let handleAnswerSelect = () => {
      props.handleAnswerSelect(answer)
    }

    return(
      <div>
        <Answer
          key={answer.id}
          id={answer.id}
          choice={choice}
          questionId={questionId}
          correct={correct}
          className={className}
          selectedAnswer={selectedAnswer}
          handleAnswerSelect={handleAnswerSelect}
        />
      </div>
    )
  })

  return(
    <ul>
      {answers}
    </ul>
  )
}

export default Answers;
