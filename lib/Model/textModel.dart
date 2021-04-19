import 'package:flutter/material.dart';

class TextModel extends ChangeNotifier{
  final String text;
  final Color color;
  final TextStyle  textStyle;
  final Size size;

TextModel({this.color,this.size,this.text,this.textStyle});

 String get getText =>text;

 void setText(String myText){
   myText=text;
 }

 notifyListeners();


}