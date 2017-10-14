import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';

import style from './styles/app.scss';

import Wrapper from './components/Wrapper';
import Picture from './components/Picture';
import List from './components/List';
import Numbers from './components/Numbers';
import Box from './components/Box';


let wrapperParagraph = 'Lorem ipsum dolor sit amet...';
let space = ["Asteroids", "Comets", "Moon", "Planets", "Stars", "Sun", "Drew "];


ReactDOM.render(
  <div>
    <Box
      boxClass='wrapper'
      header='I am the wrapper'
      paragraph={wrapperParagraph}
    />
    <Box
      boxClass='numbers'
      header="Today's Date and Random Number"
    />
    <Box
      boxClass='picture'
      header='Look at this picture'
      pictureSrc='https://s3.amazonaws.com/horizon-production/images/react-clever-ees.png'
      pictureAlt='Clever EEs'
    />
    <Box
      boxClass='list'
      header='Look at this picture'
      pictureSrc='https://s3.amazonaws.com/horizon-production/images/react-clever-ees.png'
      pictureAlt='Clever EEs'
    />
    <Box
      boxClass='list'
      header='Here is a list'
      list = {space}
    />
  </div>,
  document.getElementById('app')
);
