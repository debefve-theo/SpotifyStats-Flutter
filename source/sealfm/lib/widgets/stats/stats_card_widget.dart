import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utilities/test_data.dart';

class StatsCard extends StatelessWidget {

  String imagePath;
  String title;
  String artist;

  StatsCard({super.key, required this.artist, required this.title, required this.imagePath});

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
            elevation: 4,
            color: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network(
                      imagePath,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          artist,
                          style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
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

class Line extends StatelessWidget {

  String artist1;
  String title1;
  String imagePath1;
  String artist2;
  String title2;
  String imagePath2;

  Line({super.key, required this.artist1, required this.title1, required this.imagePath1, required this.artist2, required this.title2, required this.imagePath2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: Center(child: StatsCard(title: title1, artist: artist1, imagePath: imagePath1,))),
                const VerticalDivider(width: 10.0),
                Expanded(child: Center(child: StatsCard(title: title2, artist: artist2, imagePath: imagePath2,))),
              ]),
        ),
        const Divider(
          height: 10.0,
          color: Colors.transparent,
        ),
      ],
    );
  }
}

class LVstats extends StatelessWidget {
  const LVstats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(height: 90.0,),
        for (var i = 0; i < 30; i+=2)
          Line(
            artist1: StatsSongWeek[i].artist,
            title1: StatsSongWeek[i].title,
            imagePath1: StatsSongWeek[i].cover,
            artist2: StatsSongWeek[i+1].artist,
            title2: StatsSongWeek[i+1].title,
            imagePath2: StatsSongWeek[i+1].cover,
          ),
        Container(height: 80.0,),
      ],
    );
  }
}