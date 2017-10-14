import React from 'react'

const Answer = (props) => {

  return(
    <div onClick={props.handleAnswerSelect} className={props.className}>
      {props.choice}
    </div>
  )
}

export default Answer;
