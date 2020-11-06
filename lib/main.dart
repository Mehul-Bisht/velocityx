import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";
import 'package:velocityx/pages/home_page.dart';

import 'drawer.dart';
import 'name_card_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    );
  }
}