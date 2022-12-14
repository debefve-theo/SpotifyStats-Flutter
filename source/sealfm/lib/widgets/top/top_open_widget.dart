import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sealfm/utilities/icons.dart';
import 'package:sealfm/widgets/top/song_details_widget.dart';
import '../../utilities/controller.dart';

class TopCardOpen extends StatelessWidget {
  const TopCardOpen({super.key});

  @override
  Widget build(BuildContext context) {
    var country = 'Belgium';

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
                  Row(children: [
                    Expanded(
                      child: ListTile(
                        title: Text(
                          'Top 50',
                          style: GoogleFonts.nunito(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        subtitle: Text(
                          country,
                          style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(right: 10.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0E4DA4),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/top');
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                              child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Icon(Icons.arrow_drop_down_rounded,
                                      size: 40, color: Colors.white)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        for (var i = 0; i < 50; i++)
                          SongWidget(
                            number: i+1,
                            song: topData[i].name,
                            //artist: topData[i].artists,
                            artist: topData[i].artists[0].name,
                            path: topData[i].album.images[2].url,
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
                        Navigator.pushNamed(context, '/top');
                      },
                      icon: const Icon(
                        MyFlutterApp.spotify_blue,
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
