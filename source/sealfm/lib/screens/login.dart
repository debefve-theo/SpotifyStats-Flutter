import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealfm/utilities/icons.dart';

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
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
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
