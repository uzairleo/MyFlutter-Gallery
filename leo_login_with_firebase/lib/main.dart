import 'package:flutter/material.dart';
import 'package:leo_login_with_firebase/Auth_Helper/Auth_helper.dart';
import 'package:leo_login_with_firebase/pages/root_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter login demo',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new RootPage(auth: AuthHelper()));
  }
}