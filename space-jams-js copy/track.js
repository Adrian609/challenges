class Track {

  constructor(albumId, trackId, title, trackNumber, durationMs) {
    this.albumId = albumId;
    this.trackId = trackId;
    this.title = title;
    this.trackNumber = trackNumber;
    this.durationMs = durationMs;
  }

  // returnAlbumId() {
  //   return ('Album ID: ' + this.albumId);
  // }
  returnTrackId() {
    return ('ID: ' + this.trackId + '');
  }
  returnTrackNumber() {
    return ('\t' + this.trackNumber + ': ');
  }
  returnTrackTitle() {
    return ('\"' + this.title + '\" ');
  }
  returnTrackDurationMin() {
    let trackDurationMs = Number(this.durationMs);
    let trackMsToMin = (trackDurationMs/1000/60).toFixed(2);
    return ('(' + trackMsToMin + ' mins)');
  }

  trackSummary() {
    return (
      //this.returnTrackId() + ': ' +
      this.returnTrackNumber() +
      this.returnTrackTitle() +
      this.returnTrackDurationMin()
    );
  }

}
module.exports = Track;
