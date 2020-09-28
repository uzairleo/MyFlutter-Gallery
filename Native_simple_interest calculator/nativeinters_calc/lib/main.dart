

import 'package:flutter/material.dart';

void main() {
  runApp(Sicalculator());
}

class Sicalculator extends StatefulWidget {
  @override
  _SicalculatorState createState() => _SicalculatorState();
}

class _SicalculatorState extends State<Sicalculator> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple interest calculator",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple_Interest_Calculator"),
          centerTitle: true,
          leading: Icon(Icons.school),
        ),
        body: Column(
          children: <Widget>[
            _getimage(),
            ],
        ),
      ),
    );
  }
}

_getimage() {
  AssetImage asset = AssetImage('images/money.png');
  Image image = Image(
    image: asset,
  );
  return image;
}
