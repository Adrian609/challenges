import React from 'react';
import Playlist from './Playlist';

const PlaylistCollection = (props) => {
  let playlists = props.playlists.map((playlist) => {
    let className;
    let key=playlist.id
    let id=playlist.id
    let name=playlist.name
    let songs=playlist.songs
    let selectedPlaylistId=props.selectedPlaylistId

    if(playlist.id === props.selectedPlaylistId) {
      className='selected'
    }

    let handlePlaylistSelect = () => {
      props.handlePlaylistSelect(id)
    }

    return(
      <div>
        <Playlist
          key={playlist.id}
          id={playlist.id}
          name={name}
          songs={songs}
          className={className}
          selectedPlaylistId={selectedPlaylistId}
          handlePlaylistSelect={handlePlaylistSelect}
        />
      </div>
    )
  })


  return(
    <div>
      {playlists}
    </div>
  )
}

export default PlaylistCollection;
