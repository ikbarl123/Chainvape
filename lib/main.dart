import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chainvape/view/view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    return GetMaterialApp(
      title: 'Chainvape',
      home: Splash(),
      getPages: [
    GetPage(name: '/', page: () => Splash()),
    GetPage(name: '/login', page: () => Login()),
    GetPage(name: '/register', page: () => Register()),
    GetPage(name: "/main", page: () => MainLayout()),
      ],
    );
  }
}


  





