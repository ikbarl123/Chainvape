import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class home extends StatefulWidget {
  const home({ Key? key }) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  static const _initialCameraPos= CameraPosition(target: LatLng(0, 0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Gmap(),
      
    );
  }
}


class authBase extends StatelessWidget {
  const authBase({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height, // <--fixed here
      width: screenSize.width, // <--fixed here
      child: Gmap(),
    );
  }
}




class Gmap extends StatelessWidget {
  const Gmap({ Key? key }) : super(key: key);
 static const _initialCameraPos= CameraPosition(target: LatLng(0, 0));
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        initialCameraPosition: _initialCameraPos,
        zoomControlsEnabled: false,
      );
  }
}