import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import App from './containers/App'
import data from '../src/constants/data';

$(function() {
  ReactDOM.render(
    <App data={data}/>,
    document.getElementById('app')
  );
});
