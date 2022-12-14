import 'package:spotify/spotify.dart';

var credentials = SpotifyApiCredentials(
  'bc84c651a7ab4ee784eb136b213e824f',
  '9cda999184dd4987bcdce50f7fab6e34',
);

var topData = [];

Future getTopSong() async {
  var spotify = await SpotifyApi.asyncFromCredentials(credentials);
  var count = 1;

  var d = await spotify.playlists.getTracksByPlaylistId('37i9dQZEVXbJNSeeHswcKB').all();

  for (var track in d) {
    topData.add(track);
  }
}