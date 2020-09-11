import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({
    Key key,
  }) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String _datoPage2;
  String _datoPage3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                '185',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "Generar",
                style: Theme.of(context).textTheme.button,
              ),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
            ),
            MaterialButton(
              onPressed: () {},
              child: Text(
                "Guardar",
                style: Theme.of(context).textTheme.button,
              ),
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
