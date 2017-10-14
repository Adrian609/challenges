import React from 'react';

const Song = (props) => {

  return(
    <div className={props.className} onClick={props.handleSongSelect}>
      {props.name} - {props.artist}
    </div>
  )
}

export default Song;
