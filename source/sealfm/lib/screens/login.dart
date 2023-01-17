import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealfm/utilities/icons.dart';
import '../utilities/controller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import 'package:spotify/spotify.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/login-background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              onPressed: _launchUrl,/*() {
                Navigator.pushNamed(context, '/');
              },*/
              icon: const Icon(
                MyFlutterApp.spotify_blue,
                color: Color(0xFF0E4DA4),
              ), //icon data for elevated button spotify_blue
              label: Text(
                'Login with Spotify',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF0E4DA4),
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}

Future<void> _launchUrl() async {
  Uri url = getAuthLink();
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}


















/*
const _scopes = [
  'user-read-playback-state',
  'user-follow-read',
  'playlist-modify-private',
  'user-library-read',
  'user-read-recently-played'
];

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
}*/