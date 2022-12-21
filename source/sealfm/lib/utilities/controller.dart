import 'package:spotify/spotify.dart';

var credentials = SpotifyApiCredentials(
  'bc84c651a7ab4ee784eb136b213e824f',
  '9cda999184dd4987bcdce50f7fab6e34',
);

List<Country> countries = [
  Country(name: 'World', playlistId: '37i9dQZEVXbMDoHDwVN2tF', list: []),
  Country(name: 'Belgium', playlistId: '37i9dQZEVXbJNSeeHswcKB', list: []),
  Country(name: 'France', playlistId: '37i9dQZEVXbIPWwFssbupI', list: []),
  Country(name: 'Netherlands', playlistId: '37i9dQZEVXbKCF6dqVpDkS', list: []),
  Country(name: 'USA', playlistId: '37i9dQZEVXbLRQDuF5jeBp', list: []),
  Country(name: 'UK', playlistId: '37i9dQZEVXbLnolsZ8PSNw', list: [])
];

var topData = [];

Future getTopSong(String playlistId) async {
  var spotify = await SpotifyApi.asyncFromCredentials(credentials);
  var d = await spotify.playlists.getTracksByPlaylistId(playlistId).all();

  topData.clear();
  for (var track in d) {
    topData.add(track);
  }
}

class Country{
  String name;
  String playlistId;
  var list = [];

  Country({required this.name, required this.playlistId, required this.list});
}