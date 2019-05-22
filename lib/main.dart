import 'package:flutter/material.dart';

import './pages/home.dart';
//import 'package:flutter/rendering.dart';

import './product_manager.dart';

//if only one statement is there.
//void main() => runApp(MyApp());

void main() {
  //debugPaintSizeEnabled = true;
  //debugPaintBaselinesEnabled = true;
  //debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home: HomePage()
    ); //MaterialApp
  }
}
