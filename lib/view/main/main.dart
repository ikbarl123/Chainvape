import 'package:chainvape/view/main/tabs/setting.dart';
import 'package:flutter/material.dart';
import 'package:chainvape/view/main/tabs/gmap.dart';
import 'tabs/list.dart';

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
                  Tab(child: Icon(Icons.home, color: Colors.black, size: 40,)),
                  Tab(child: Icon(Icons.bookmark, color: Colors.black,size: 40,)),      
                  Tab(child: Icon(Icons.settings, color: Colors.black,size: 40,)),
                ],
              ),
            ),
          ),

      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Gmap(),
          ListStore(),
          SettingTabs(),
        ],
      )
      )
      );
  }
}
