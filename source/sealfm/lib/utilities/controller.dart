import 'dart:io';
import 'package:spotify/spotify.dart';

List<Country> countries = [
  Country(name: 'World', playlistId: '37i9dQZEVXbMDoHDwVN2tF', list: []),
  Country(name: 'Belgium', playlistId: '37i9dQZEVXbJNSeeHswcKB', list: []),
  Country(name: 'France', playlistId: '37i9dQZEVXbIPWwFssbupI', list: []),
  Country(name: 'Netherlands', playlistId: '37i9dQZEVXbKCF6dqVpDkS', list: []),
  Country(name: 'USA', playlistId: '37i9dQZEVXbLRQDuF5jeBp', list: []),
  Country(name: 'UK', playlistId: '37i9dQZEVXbLnolsZ8PSNw', list: [])
];

var topData = [];
var currentPlaylistId = '37i9dQZEVXbMDoHDwVN2tF';

Future getTopSong(/*String playlistId*/) async {
  var spotify = await SpotifyApi.asyncFromCredentials(credentials);
  /*var d = await spotify.playlists.getTracksByPlaylistId(playlistId).all();

  currentPlaylistId = playlistId;

  topData.clear();
  for (var track in d) {
    topData.add(track);
  }*/

  //******
  for (var country in countries) {
    var data = await spotify.playlists.getTracksByPlaylistId(country.playlistId).all();

    country.list.clear();
    for (var track in data) {
      country.list.add(track);
    }
  }
}

class Country{
  String name;
  String playlistId;
  var list = [];

  Country({required this.name, required this.playlistId, required this.list});
}

//******************************************************************************

const _scopes = [
  'user-read-playback-state',
  'user-follow-read',
  'playlist-modify-private',
  'user-library-read',
  'user-read-recently-played'
];

var credentials = SpotifyApiCredentials(
  'bc84c651a7ab4ee784eb136b213e824f',
  '9cda999184dd4987bcdce50f7fab6e34',
);

Uri getAuthLink() {
  var redirect = 'https://theo-debefve.be';
  var grant = SpotifyApi.authorizationCodeGrant(credentials);
  var authUri = grant.getAuthorizationUrl(Uri.parse(redirect!), scopes: _scopes);
  return authUri;
}

Future<SpotifyApi?> _getUserAuthenticatedSpotifyApi() async {

  var credentials = SpotifyApiCredentials('bc84c651a7ab4ee784eb136b213e824f', '9cda999184dd4987bcdce50f7fab6e34');

  print('Please paste your redirect url (from your spotify application\'s redirect url):');
  //var redirect = stdin.readLineSync();
  //var redirect = 'com.example.sealfm:/oauth2redirect';
  var redirect = 'https://theo-debefve.be';

  var grant = SpotifyApi.authorizationCodeGrant(credentials);
  var authUri = grant.getAuthorizationUrl(Uri.parse(redirect!), scopes: _scopes);

  print('Please paste this url \n\n$authUri\n\nto your browser and enter the redirected url:');
  var redirectUrl;
  var userInput = stdin.readLineSync();

  if (userInput == null || (redirectUrl = Uri.tryParse(userInput)) == null) {
    print('Invalid redirect url');
    return null;
  }

  var client =
  await grant.handleAuthorizationResponse(redirectUrl.queryParameters);
  return SpotifyApi.fromClient(client);
}