import React, { Component } from 'react';
import { Router, Route, IndexRoute, browserHistory } from 'react-router';
import NavBar from './NavBar';
import EducationTile from './EducationTile';
import ProjectShow from './ProjectShow';
import Resume from './Resume';
import VolunteerTile from './VolunteerTile';
import WorkTile from './WorkTile';
import ProjectsIndexContainer from '../containers/ProjectsIndexContainer';
import ProjectShowContainer from '../containers/ProjectShowContainer';
import About from './About';

class App extends Component {
  constructor(props) {
    super(props)
    this.state = {

    }
  }

  render() {
    return(
      <Router history={browserHistory} >
        <Route path="/" component={NavBar} >
          <IndexRoute component={About} />
          <Route path="resume" component={Resume} />
          <Route path="projects" component={ProjectsIndexContainer} />
          <Route path="projects/:id" component={ProjectShowContainer} />

        </Route>
      </Router>
    )
  }
}

export default App;
