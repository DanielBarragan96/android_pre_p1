import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.grey,
            fontSize: 40,
            fontWeight: FontWeight.w900,
          ),
          headline2: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
          bodyText1: TextStyle(
            color: Colors.black87,
            fontSize: 13,
          ),
          button: TextStyle(
            fontSize: 13,
            color: Colors.white,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
