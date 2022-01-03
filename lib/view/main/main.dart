import 'package:flutter/material.dart';
import 'package:chainvape/view/main/tabs/gmap.dart';

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
          bottomNavigationBar: Container(
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
          Gmap(),
          Gmap(),
          Gmap(),
        ],
      )
      )
      );
  }
}
