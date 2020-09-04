import 'package:flutter/material.dart';
import './Screens/homepage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anand app',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

