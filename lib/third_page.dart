import 'dart:math';

import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({
    Key key,
  }) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  String text1 = '( ⚆ _ ⚆ )';
  String text2 = '(´・ω・)っ由';
  String text3 = '¯\\_(ツ)_/¯';
  int _randomNumber;
  static const int MAX_RANDOM = 1000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 3'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(text1);
            },
            child: Text(
              text1,
            ),
            color: Colors.white,
            textColor: Colors.black,
          ),
          SizedBox(width: 20),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(text2);
            },
            child: Text(
              text2,
            ),
            color: Colors.black,
            textColor: Colors.white,
          ),
          SizedBox(width: 20),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop(text3);
            },
            child: Text(
              text3,
            ),
            color: Colors.white,
            textColor: Colors.black,
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }

  void generateRandomNumber() {
    Random rand = new Random();
    _randomNumber = rand.nextInt(MAX_RANDOM);
  }
}
