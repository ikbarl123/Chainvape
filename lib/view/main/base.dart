import 'package:flutter/material.dart';
import 'package:chainvape/view/main/home.dart';

class MainLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainLayoutState();
  }
}

class MainLayoutState extends State<MainLayout> with TickerProviderStateMixin {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
      child: Scaffold(

          bottomSheet: Container(
             color: Color.fromRGBO(226, 252, 229, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                indicator: BoxDecoration(color: Colors.green ,shape: BoxShape.circle),

                tabs: <Widget>[
                  Tab(child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/home.png'),
          fit: BoxFit.scaleDown,
        ),
        shape: BoxShape.circle,
      ),
    )),

                 Tab(child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/bookmark.png'),
          fit: BoxFit.fitHeight,
        ),
        shape: BoxShape.circle,
      ),
    )),
                  
                  Tab(child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/setting.png'),
          fit: BoxFit.scaleDown,
        ),
        shape: BoxShape.circle,
      ),
    )),
                ],
              ),
            ),
          ),

      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          home(),
          home(),
          home(),
        ],
      )));
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