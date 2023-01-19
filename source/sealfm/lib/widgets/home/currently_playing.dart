import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';

class CurrentlyPlaying extends StatelessWidget {
  const CurrentlyPlaying({super.key});

  @override
  Widget build(BuildContext context) {
    var song = 'Gotaga';
    var artist = 'Vald';
    var imagePath = 'https://i.scdn.co/image/ab67616d00001e027c3f542045d202f020e9a2a2';
    var device = 'Laptop-Theo';

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            elevation: 4,
            color: const Color(0xFF1DB954),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            margin: const EdgeInsets.only(left: 10.0, right: 0.0, top: 20.0),
                            color: Colors.white,
                            child:IconButton(
                              icon: const Icon(Icons.pause_rounded),
                              color: const Color(0xFF1DB954),
                              onPressed: () {
                                //Navigator.pushNamed(context, '/settings');
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: CachedNetworkImage(
                              imageUrl: imagePath,
                              width: 60,
                              height: 60,
                              fit: BoxFit.fill,
                              placeholder: (context, url) => const CircularProgressIndicator(),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  song,
                                  style: GoogleFonts.nunito(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  artist,
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  device,
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[ Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          margin: const EdgeInsets.only(left: 10.0, right: 0.0, top: 20.0),
                          color: Colors.white,
                          child:IconButton(
                            icon: const Icon(Icons.skip_next_rounded),
                            color: const Color(0xFF1DB954),
                            onPressed: () {
                              //Navigator.pushNamed(context, '/settings');
                            },
                          ),
                        ),
                      ]),
                    ),
                ]
            ),
          ),
          )],
      ),
    );
  }
}