import 'package:universes_of_adventure/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pept',
      theme: ThemeData(
        primaryColor: Colors.white,
        // This is the theme of your application.
        fontFamily: 'Montserrat',
        //primarySwatch: MaterialColor(0xff016A9A),
      ),
      home: HomePage(),
    );
  }
}
