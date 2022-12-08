import 'package:flutter/material.dart';

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