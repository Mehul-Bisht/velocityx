import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "package:velocity_x/velocity_x.dart";
import 'package:velocityx/pages/home_page.dart';
import 'package:velocityx/pages/login_page.dart';
import 'package:velocityx/utils/Constants.dart';

import 'drawer.dart';
import 'name_card_widget.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Constants.prefs.getBool("loggedIn") == true ? MyHomePage() : LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        MyHomePage.routeName: (context) => MyHomePage(),
      },
    );
  }
}