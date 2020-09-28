import 'package:flutter/material.dart';
import 'package:leoportfolio/config/constants.dart';
import 'dart:html'as html;

class LeoBlog extends StatefulWidget {
  @override
  _LeoBlogState createState() => _LeoBlogState();
}

class _LeoBlogState extends State<LeoBlog> {
navigateToBlog(){
  html.window.open(Constants.BLOG_URL, 'uzairleo');
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.done){
          navigateToBlog();
            return Text("Blog Opened");
          }else{
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                CircularProgressIndicator(),
                SizedBox(height:14.0),
                Text("opening blog....."),
              ]
            );
          }
        },
      ),
    );
  }
}