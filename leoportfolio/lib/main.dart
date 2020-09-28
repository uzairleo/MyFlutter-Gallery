import 'package:leoportfolio/pages/home_page.dart';
import 'package:leoportfolio/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

import 'config/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: Leodroid(),
    );
  }
}
class Leodroid extends StatelessWidget {
  const Leodroid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'uzairleo resume',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: HomePage(),
    );
  }
}
