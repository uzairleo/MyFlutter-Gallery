import 'package:flutter/material.dart';
// import 'package:introductionscreen_builder/Result.dart';
// import 'package:introductionscreen_builder/BmiCalculation.dart';

class BmiMode extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        children: <Widget>[
          SizedBox(height: 50.0,),
          Container(
            width: 400,
            height: 280,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black45,width: 12.0),
                borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Icon(Icons.tag_faces,size: 200.0,color: Colors.yellow,),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
          ),
            Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38,width: 10.0),
                borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: _modeChecker(),
            ),
          ),
        ],
      ),
      
    );
  }
  _modeChecker(){
    //  if(Result.result()==""){
       
    //  }
  }
}