import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _datoPage2;
  String _datoPage3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarea 1'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                child: Text(
                  'Bienvenidos',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Image(
                image: NetworkImage(
                  "https://raw.githubusercontent.com/kevmoo/dart_side/master/Dash%20Dart%20PNG%20%20-%20white.png",
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                child: Text(
                  'Selecciona la accion a realizar:',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Pagina 2",
                    style: Theme.of(context).textTheme.button,
                  ),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                ),
                Spacer(
                  flex: 1,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Pagina 3",
                    style: Theme.of(context).textTheme.button,
                  ),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                child: Text(
                  'Pg.2 => ${_datoPage2 ?? ""}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                child: Text(
                  'Pg.3 => ${_datoPage3 ?? ""}',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
