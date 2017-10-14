import '../stylesheets/App.scss';
import React from 'react';
import TabList from './TabList'

class App extends React.Component {

  constructor(props) {
    super(props)
    this.state = {
      selectedId: ""
    }
    this.handleTabClick = this.handleTabClick.bind(this)
  }

  handleTabClick(newId) {
    let setId;
    if (this.state.selectedId !== newId) {
      setId = newId;
    }
    this.setState({ selectedId: setId })
  }

  render() {
    let icon="fa fa-plus-square-o";
    return(
      <div>
        <h1 className='pageHeader'>We're here to help.</h1>
        <TabList
          selectedId={this.state.selectedId} // MUST be this.state
          icon={icon}
          data={this.props.data}
          handleTabClick={this.handleTabClick}
        />
      </div>
    ) // end return
  } // end render
}

export default App;
