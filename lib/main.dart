import 'package:flutter/material.dart';
import 'package:chainvape/view/splash.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Flame',
      home: BaseLayout()
    );
  }
}

class BaseLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Image5.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Splash() /* add child content here */,
      ),
    );
  }
}
  





