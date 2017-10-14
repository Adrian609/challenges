import React from 'react';
import Tab from './Tab'
import '../stylesheets/Tab.scss';

const TabList = (props) => {
  let icon='fa fa-plus-square-o';

  let tabs = props.data.map((tab) => {
    let text;
    let key = tab.id;
    let id = tab.id;

    if (tab.id === props.selectedId) {
      text = tab.answer;
      icon='fa fa-minus-square-o';
    } else {
      text = null;
      icon='fa fa-plus-square-o';
    }

    let question = tab.question;

    return(
      <div>
        <Tab
          icon={icon}
          key={tab.id}
          id={tab.id} // redeclare this so we have access to ID (key reserved for react)
          question={tab.question}
          text={text}
          handleTabClick={props.handleTabClick}
        />
        {<hr/>}
      </div>
    )
  });

  return(
    <div>
      {tabs}
    </div>
  )
}

export default TabList;
