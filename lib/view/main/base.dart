import 'package:flutter/material.dart';
import 'package:chainvape/view/main/home.dart';


class BaseLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomSheet: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home),text: "home",),
              Tab(icon: Icon(Icons.home),text: "h",),
              Tab(icon: Icon(Icons.home),text: "hom",),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: home(),),
              Center(child: home(),),
              Center(child: home(),),
            ],),
        )
      ),
      );

  }
}