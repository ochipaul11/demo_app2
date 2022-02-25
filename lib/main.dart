import 'package:demo_app2/homepage.dart';
import 'package:demo_app2/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Loginpage(),
    theme: ThemeData(primarySwatch: Colors.brown),
    routes: {
      Loginpage.routeName: (context) => Loginpage(),
      HomePage.routeName:(context) => HomePage()
    },
  ));
}
