part of 'view.dart';


class MainLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainLayoutState();
  }
}

class MainLayoutState extends State<MainLayout> with TickerProviderStateMixin {

final GlobalKey<NavigatorState> _navKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
      child: Scaffold(
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                         color: Color.fromRGBO(226, 252, 229, 1),
    border: Border(top: BorderSide(color: Colors.black))
  ),
  
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TabBar(
                indicator: BoxDecoration(color: Colors.green ,shape: BoxShape.circle),
                tabs: <Widget>[
                  Tab(child: Icon(Icons.home, color: Colors.black, size: 40,)),
                  Tab(child: Icon(Icons.map, color: Colors.black,size: 40,)),      
                  Tab(child: Icon(Icons.settings, color: Colors.black,size: 40,)),
                ],
              ),
            ),
          ),

      body: Navigator(
        key: _navKey,
        onGenerateRoute: (_) => MaterialPageRoute(
          builder: (_) => TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Forum(),
          Gmap(),
          SettingTabs(),
        ],
      )
      )))
      );
  }
}
