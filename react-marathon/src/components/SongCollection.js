import React from 'react';
import Song from './Song';

const SongCollection = (props) => {

  let songs = props.songs.map((song) => {
    let className;
    let key=song.id
    let id=song.id
    let name=song.name
    let artist=song.artist

    if(song.id === props.selectedSongId) {
      className='selected'
    }

    let handleSongSelect = () => {
      props.handleSongSelect(id)
    }

    return(
      <div>
        <Song
          key={id}
          id={id}
          name={name}
          artist={artist}
          className={className}
          handleSongSelect={handleSongSelect}
        />
      </div>
    )
  })

  return(
    <div>
      {songs}
    </div>
  )
}


export default SongCollection;
