import 'package:flutter/material.dart';

import 'utilities/route.dart';
import 'utilities/controller.dart';

void main() async{
  await getTopSong();

  runApp(
    MaterialApp(
      title: 'Seal.fm',
      initialRoute: '/',
      routes: customRoutes,
    ),
  );
}