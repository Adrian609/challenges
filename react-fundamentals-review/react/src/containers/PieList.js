import React from 'react';
import Pie from '../components/Pie';

class PieList extends React.Component{
  constructor(props) {
    super(props);

    this.state = {
      selectedId: null
    }

    this.handlePieClick = this.handlePieClick.bind(this)
  }

  handlePieClick( id ) {
    this.setState( { selectedId: id } )
  }


  render(){
    let classString;
    let pieList = this.props.pies.map((pie) => {

      if(pie.id === this.state.selectedId) {
        classString = "selected"
      } else {
        classString = ""
      }

      let onPieClick = () => this.handlePieClick(pie.id)

      return (
        <Pie
          key={pie.id}
          id={pie.id}
          name={pie.name}
          handleClick={onPieClick}
          classString={classString}
        />
      );
    });

    return (
      <div>
        <ul>{pieList}</ul>
      </div>
    )
  }
}
