import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visiting_card_app/Model/textModel.dart';
import 'package:visiting_card_app/Screen/designingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider.value(
        value: TextModel(),
        child: DesigningPage(),
      ),
    );
  }
}
