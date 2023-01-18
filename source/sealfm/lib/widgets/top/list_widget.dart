import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealfm/utilities/controller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sealfm/utilities/icons.dart';

import 'song_widget.dart';

class ListW extends StatefulWidget {
  List data;
  var currentId;

  ListW({super.key, required this.data, required this.currentId});

  @override
  State<ListW> createState() => _ListWState();
}

class _ListWState extends State<ListW> {

  @override
  Widget build(BuildContext context) {

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
            color: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 0, bottom: 15.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF0E4DA4),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)),
                                ),
                                onPressed: () {
                                  //Navigator.pushNamed(context, '/top');
                                  //setState(() { });
                                  _launchUrl();
                                },
                                icon: const Icon(
                                  MyFlutterApp.spotify_blue,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Check on spotify',
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 15.0, bottom: 15.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF0E4DA4),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)),
                                ),
                                onPressed: () {
                                  setState(() { });
                                },
                                icon: const Icon(
                                  Icons.restart_alt,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Reload',
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        for (var i = 0; i < 50; i++)
                          SongWidget(
                            number: i+1,
                            song: widget.data[i].name,
                            //artist: topData[i].artists,
                            artist: widget.data[i].artists[0].name,
                            path: widget.data[i].album.images[2].url,
                          ),
                      ],
                    ),
                  ),

                ]),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchUrl() async {
  //final Uri _url = Uri.parse('https://theo-debefve.be');
  //var url = _url + currentPlaylistId;

  Uri _url = Uri.parse('https://open.spotify.com/playlist/$currentPlaylistId');

  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}
