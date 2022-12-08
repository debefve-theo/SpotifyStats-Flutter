import 'package:flutter/material.dart';

import '../screens/home.dart';
import '../screens/top.dart';
import '../screens/stats.dart';
import '../screens/settings.dart';
import '../screens/login.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomeScreen(),
  '/top': (context) => const TopScreen(),
  '/stats': (context) => const StatsScreen(),
  '/settings': (context) => const SettingsScreen(),
  '/login': (context) => const LoginScreen(),
};