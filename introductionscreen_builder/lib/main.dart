import 'package:flutter/material.dart';
import 'package:introductionscreen_builder/BmiCalculation.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Introduction_Screen Demo',
     
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=> (BmiCalculation())
        ));
      }
    );
  }
  @override
  Widget build(BuildContext context) {
  
    return 
       Scaffold(
         
      // backgroundColor: Colors.orange,
          body:_splashScreen(context)
          

    );

  }
 
_splashScreen(BuildContext context)
{
  return     Container(
    width: 500,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.deepOrange,Colors.orangeAccent],
        begin: FractionalOffset.topLeft,
        end: FractionalOffset.bottomRight,
        stops: [0.0,1.0],
        tileMode: TileMode.clamp,
      )
      
    ),
    child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 100.0,),
                       Image(
                          height: 100,
                          width: 100,
                          image:AssetImage("images/bmi.png"),
                        ),
                     SizedBox(height: 10,),
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: "BMI",
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: " Calculator",
                              style: TextStyle(
                              fontSize: 35.0,
                              fontStyle: FontStyle.normal
                              // fontWeight: FontWeight.w700
                            ),
                              )
                            ]
                          ),
                        ),
                      )
                    ],
                  ),
  );
}
  
  }

