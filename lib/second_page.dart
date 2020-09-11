import 'dart:math';

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String dato;

  SecondPage({
    Key key,
    @required this.dato,
  }) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String dato;
  int _randomNumber;
  static const int MAX_RANDOM = 1000;

  @override
  void initState() {
    dato = widget.dato;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.white],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 20),
              Container(
                child: Text(
                  'Genere numero random',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Text(
                  '${_randomNumber ?? "-"}',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              SizedBox(height: 10),
              MaterialButton(
                onPressed: () {
                  generateRandomNumber();
                  setState(() {});
                },
                child: Text(
                  "Generar",
                  style: Theme.of(context).textTheme.headline6,
                ),
                color: Colors.white,
              ),
              MaterialButton(
                onPressed: () {
                  String number = (_randomNumber == null)
                      ? " "
                      : "${_randomNumber.toString()}";
                  Navigator.of(context).pop(dato + " " + number);
                },
                child: Text(
                  "Guardar",
                  style: Theme.of(context).textTheme.headline6,
                ),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void generateRandomNumber() {
    Random rand = new Random();
    _randomNumber = rand.nextInt(MAX_RANDOM);
  }
}
