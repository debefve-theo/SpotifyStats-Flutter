import 'package:flutter/material.dart';

import '../screens/main_screen.dart';
import '../screens/settings.dart';
import '../screens/login.dart';
import '../screens/more.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const MainScreen(),
  //'/home': (context) => const HomeScreen(),
  //'/top': (context) => const TopScreen(),
  //'/stats': (context) => const StatsScreen(),
  '/settings': (context) => const SettingsScreen(),
  '/login': (context) => const LoginScreen(),
  '/more': (context) => const MoreScreen(),
};