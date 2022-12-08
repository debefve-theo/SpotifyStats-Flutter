import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utilities/route.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Seal.fm',
      initialRoute: '/',
      routes: customRoutes,
    ),
  );
}