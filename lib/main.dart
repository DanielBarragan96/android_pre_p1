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
        fontFamily: 'SourceSansPro',
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Pacifico',
            color: Colors.grey,
            fontSize: 40,
            fontWeight: FontWeight.w500,
          ),
          headline2: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
          headline3: TextStyle(
            color: Colors.purple,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          ),
          bodyText1: TextStyle(
            color: Colors.black87,
            fontSize: 14,
          ),
          bodyText2: TextStyle(
            color: Colors.red,
            fontSize: 25,
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.w900,
          ),
          button: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
