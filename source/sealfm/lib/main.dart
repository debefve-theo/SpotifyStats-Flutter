import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spotify/spotify.dart';

import 'utilities/route.dart';
import 'utilities/controller.dart';

void main() async{
  await getTopSong(countries[0].playlistId);
  runApp(
    MaterialApp(
      title: 'Seal.fm',
      initialRoute: '/',
      routes: customRoutes,
    ),
  );
}