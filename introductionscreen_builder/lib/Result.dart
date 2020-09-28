import 'package:flutter/material.dart';

class Result{

 static  TextEditingController height=TextEditingController();
 static TextEditingController weight=TextEditingController();
  

 static String result(){

  double hite=double.parse(height.text);
  double wet=double.parse(weight.text);
  double hitesquare=hite*hite;
  double result=wet/hitesquare;
  String finalresult="$result";
  return finalresult;
} 
}