import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Awesome App"),
      ),
          body: Center(
            child: Container(
              padding: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [
                  Colors.pink,
                  Colors.yellow,
                ]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  )
                ]
              ),
              child: Text(
                  "I am a box",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),),
    ),
          ),
    );
  }
}


