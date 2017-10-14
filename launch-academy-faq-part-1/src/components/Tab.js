import React from 'react';
import '../stylesheets/Tab.scss';

const Tab = (props) => {

  let handleTabClick = () => {
    props.handleTabClick(props.id)
  }

  return(
    <div className='tab'>
      <i onClick={handleTabClick} className={props.icon} id='icon' aria-hidden="false"/>
      {props.question}
      <p>
        {props.text}
      </p>
    </div>
  )
}


export default Tab;
