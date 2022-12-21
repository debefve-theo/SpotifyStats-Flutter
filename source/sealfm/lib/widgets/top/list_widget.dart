import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'song_widget.dart';

class ListW extends StatefulWidget {
  List data;

  ListW({super.key, required this.data});

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
                        /*for(Track t in topData)
                            SongWidget(
                              number: i,
                              song: topData[i].name,
                              //artist: topData[i].artists,
                              artist: '---',
                              //path: topData[i].id,
                              path: 'https://i.scdn.co/image/ab67616d00001e022724364cd86bb791926b6cc8',
                            ),*/
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
                  Container(
                    margin: const EdgeInsets.only(left: 15.0, bottom: 15.0),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0E4DA4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      onPressed: () {
                        //Navigator.pushNamed(context, '/top');
                        setState(() { });
                      },
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Check on spotify',
                        style: GoogleFonts.nunito(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
