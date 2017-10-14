import React from 'react';
import PlaylistCollection from './PlaylistCollection'
import SongCollection from './SongCollection'

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      selectedSongId: this.props.data.selectedSongId,
      selectedPlaylistId: this.props.data.selectedPlaylistId
    }
    this.handleSongSelect=this.handleSongSelect.bind(this);
    this.handlePlaylistSelect=this.handlePlaylistSelect.bind(this);
  }

  handleSongSelect(setId){
    // let setId;
    // if (this.state.selectedId !== id) {
    //   setId = id;
    // }
    this.setState({selectedSongId: setId})
  }

  handlePlaylistSelect(id){

    let songs = this.props.data.playlists[id-1].songs

    if (id != this.state.selectedPlaylistId) {
      this.setState({
        selectedPlaylistId: id,
        selectedSongId: songs[0]
      })
    }
  }



  render() {
    let data = this.props.data

    //debugger;
    let selectedPlaylistSongIds = data.playlists[this.state.selectedPlaylistId-1].songs;

    let filterById = (obj) => {
      return selectedPlaylistSongIds.includes(obj.id);
    }

    let selectedPlaylistSongs = data.songs.filter(filterById);

    return (
      <div>
        <h1>Playlists</h1>
        <div className="App row">
          <PlaylistCollection
            playlists={this.props.data.playlists}
            selectedPlaylistId={this.state.selectedPlaylistId}
            handlePlaylistSelect={this.handlePlaylistSelect}
          />
          <p></p>
          <SongCollection
            songs={selectedPlaylistSongs}
            selectedSongId={this.state.selectedSongId}
            handleSongSelect={this.handleSongSelect}
          />
        </div>
      </div>
    );
  }
}

export default App;
