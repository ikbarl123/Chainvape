import 'package:chainvape/view/auth/splash.dart';
import 'package:flutter/material.dart';
import 'package:chainvape/view/main/base.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Flame',
      home: Splash()
    );
  }
}


  





