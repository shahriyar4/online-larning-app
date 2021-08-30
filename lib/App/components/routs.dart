import 'package:flutter/material.dart';
import 'package:test_app/screens/explore_screen/explore_screen.dart';
import 'package:test_app/screens/home/home_page.dart';
import 'package:test_app/screens/login_screen/login_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => LoginScreen(),
  HomePage.routeName: (context) => HomePage(),
  ExploreScreen.routeName: (context) => ExploreScreen(),
};
