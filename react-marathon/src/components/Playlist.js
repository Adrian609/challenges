import React from 'react';

const Playlist = (props) => {

  return(
    <div onClick={props.handlePlaylistSelect} className={props.className}>
      {props.name}
    </div>
  )
}

export default Playlist;
