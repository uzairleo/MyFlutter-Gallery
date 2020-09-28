

//now its time for Bottom Navigation Bar lets did it but first study that how can we implement 
import 'package:flutter/material.dart';
void main()
{
  runApp(new MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'BottomNavigationBar',
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _children=[
    NavigatedScreen("RedScreen",Colors.redAccent),
    NavigatedScreen("OrangeScreen", Colors.orangeAccent),
    NavigatedScreen("YellowScreen", Colors.yellowAccent),
  ];
  int _currentindex=0;
 void  _ontap(int cindex){
    setState(() {
      _currentindex=cindex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigationBar Demo"),
      ),
      bottomNavigationBar: BottomNavigationBar(
       elevation: 10.0,
      //  type: BottomNavigationBarType.fixed,
      //  backgroundColor: Colors.redAccent,
       currentIndex: _currentindex,
       onTap: _ontap,
        items: [
        
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            title: Text("Contact us")

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("home")


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            activeIcon: Icon(Icons.contact_phone),
            title: Text("User"),
          )
        ],
      ),
      body: _children[_currentindex]
      
    );
  }
}
class NavigatedScreen extends StatelessWidget {
   final String title;
  final  Color color;
  NavigatedScreen(this.title,this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
       color: color,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Center(
             child:InkWell(
               child: Text(
                 title+" \nPress me "
               ),
               onTap: (){
                //  Navigator
               },
             ),
           ),
           _leaveBNS(context,)

         ],
       ),
      
    );
  }
  _leaveBNS(BuildContext context){
    if(this.title=="OrangeScreen")
    {
      return FlatButton(
        child:Text("Leave BTBar"),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=> (Container(child: Center(child: Text("finally leave"),),))
          ));
        },);
    }
    else{
      return SizedBox();
    }
    }
  
}
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   // This wid get is the root of your application.
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
      
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// dynamic pag1=Container(
//     child: Center(
//       child: Text("This is tab 1(one)"),
//     )
//   );
//  dynamic pag2=Container(
//     child: Center(
//       child: Text("This is tab 2(two)"),
//     ),
//   );
  
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return DefaultTabController(
//         length: 2,
//         child:
   
//     Scaffold(
      
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//         bottom: TabBar(
//           tabs: <Widget>[
//             Tab(child: Text("one"),),
//             Tab(child:Text("two")),
//           ],
//         ),
//       ),
//       body: TabBarView(
//       children: <Widget>[
//   pag1,
//   pag2,        
//       ],
//       ),
//       //  Center(
//       //   // Center is a layout widget. It takes a single child and positions it
//       //   // in the middle of the parent.
//       //   child: Column(
//       //     // Column is also a layout widget. It takes a list of children and
//       //     // arranges them vertically. By default, it sizes itself to fit its
//       //     // children horizontally, and tries to be as tall as its parent.
//       //     //
//       //     // Invoke "debug painting" (press "p" in the console, choose the
//       //     // "Toggle Debug Paint" action from the Flutter Inspector in Android
//       //     // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//       //     // to see the wireframe for each widget.
//       //     //
//       //     // Column has various properties to control how it sizes itself and
//       //     // how it positions its children. Here we use mainAxisAlignment to
//       //     // center the children vertically; the main axis here is the vertical
//       //     // axis because Columns are vertical (the cross axis would be
//       //     // horizontal).
//       //     mainAxisAlignment: MainAxisAlignment.center,
//       //     children: <Widget>[
//       //       Text(
//       //         'You have pushed the button this many times:',
//       //       ),
//       //       Text(
//       //         '$_counter',
//       //         style: Theme.of(context).textTheme.display1,
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
//       floatingActionButton: FloatingActionButton.extended(
//         label: Text("Press"),
//         onPressed: (){
//           setState(() {
//             pag1=Container(child: Center(child: Text("i am pressed tab one"),),);
//             pag2=Container(child: Center(child: Text("i am pressed tab two"),),);
            
//           });
//         },
//       ),
//       ),
      
//     );
//   }
// }