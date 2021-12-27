import 'package:flutter/material.dart';
import 'package:chainvape/view/main/home.dart';


class BaseLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: createMaterialColor(Color(0xE3FDE5)),
    )
  ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomSheet: Container(
             color: Color.fromRGBO(226, 252, 229, 1),
            child: TabBar(
              tabs: <Widget>[
                Tab(child: Image(image: AssetImage('assets/images/home.png'))),
                Tab(child: Image(image: AssetImage('assets/images/bookmark.png'))),
                Tab(child: Image(image: AssetImage('assets/images/setting.png'))),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(child: home(),),
              Center(child: home(),),//fav(),),
              Center(child: home(),),//setting(),),
            ],),
        )
      ),
      );

  }
}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  final swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}