import 'package:demo_app2/homepage.dart';
import 'package:demo_app2/login_page.dart';
import 'package:demo_app2/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//changed the 'void main()' to 'Future main()' since we want to use
//the 'await' key word-----working with sharedPreferences

Future main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //make sure everything is initialized first
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MaterialApp(
    home: Constants.prefs?.getBool("loggedIn") == true ? HomePage() : Loginpage(),
    theme: ThemeData(primarySwatch: Colors.brown),
    routes: {
      Loginpage.routeName: (context) => Loginpage(),
      HomePage.routeName: (context) => HomePage()
    },
  ));
}
