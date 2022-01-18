import 'package:chainvape/service/service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      home: MultiRepositoryProvider(providers: [
        RepositoryProvider(create: (context)=> StoreService()),
      ], child: MainLayout()),
 
    );
  }
}


  





