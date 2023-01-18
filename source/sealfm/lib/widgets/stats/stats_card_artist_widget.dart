import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utilities/test_data.dart';

class StatsCard extends StatelessWidget {

  String imagePath;
  int popularity;
  String artist;

  StatsCard({super.key, required this.artist, required this.popularity, required this.imagePath});

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
                          artist,
                          style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'Popularity: $popularity',
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
  int popularity1;
  String imagePath1;
  String artist2;
  int popularity2;
  String imagePath2;

  Line({super.key, required this.artist1, required this.popularity1, required this.imagePath1, required this.artist2, required this.popularity2, required this.imagePath2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 18.0, right: 18.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: Center(child: StatsCard(popularity: popularity1, artist: artist1, imagePath: imagePath1,))),
                const VerticalDivider(width: 10.0),
                Expanded(child: Center(child: StatsCard(popularity: popularity2, artist: artist2, imagePath: imagePath2,))),
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

class artistStats extends StatelessWidget {
  int ind;
  artistStats({super.key, required this.ind});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(height: 90.0,),
        if(ind == 0)
          for (var i = 0; i < 20; i+=2)
            Line(
              artist1: StatsArtistWeek[i].artist,
              popularity1: StatsArtistWeek[i].popularity,
              imagePath1: StatsArtistWeek[i].cover,
              artist2: StatsArtistWeek[i+1].artist,
              popularity2: StatsArtistWeek[i+1].popularity,
              imagePath2: StatsArtistWeek[i+1].cover,
            ),
        if(ind == 1)
          for (var i = 0; i < 20; i+=2)
            Line(
              artist1: StatsArtistMonth[i].artist,
              popularity1: StatsArtistMonth[i].popularity,
              imagePath1: StatsArtistMonth[i].cover,
              artist2: StatsArtistMonth[i+1].artist,
              popularity2: StatsArtistMonth[i+1].popularity,
              imagePath2: StatsArtistMonth[i+1].cover,
            ),
        if(ind == 2)
          for (var i = 0; i < 20; i+=2)
            Line(
              artist1: StatsArtistAll[i].artist,
              popularity1: StatsArtistAll[i].popularity,
              imagePath1: StatsArtistAll[i].cover,
              artist2: StatsArtistAll[i+1].artist,
              popularity2: StatsArtistAll[i+1].popularity,
              imagePath2: StatsArtistAll[i+1].cover,
            ),
        Container(height: 80.0,),
      ],
    );
  }
}