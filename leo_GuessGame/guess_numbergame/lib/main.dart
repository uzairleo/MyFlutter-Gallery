import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(new Guessgame());
}

class Guessgame extends StatelessWidget{


  @override
  Widget build (BuildContext context)
  {
    return MaterialApp(
      title: 'GuessGame',
      home: GuessGameBody(),
    );
  }
}
class GuessGameBody extends StatelessWidget {
  
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Leo_GuessGame"),
        centerTitle: true, 
      ),
      body: Column(
        children: <Widget>[
         

        ],
      ),
    );
  }
}