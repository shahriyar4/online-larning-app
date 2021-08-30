import 'package:flutter/material.dart';
import 'package:test_app/screens/login_screen/login_screen.dart';
import 'components/routs.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: routes,
    );
  }
}
