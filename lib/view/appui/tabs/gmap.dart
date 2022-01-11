
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;

final GlobalKey<NavigatorState> _navKey = GlobalKey<NavigatorState>();

class Gmap extends StatefulWidget {
  const Gmap({ Key? key }) : super(key: key);

  @override
  _GmapState createState() => _GmapState();
}

class _GmapState extends State<Gmap> {
  static const _initialCameraPos= CameraPosition(target: LatLng(-6.921216508417418, 107.60761891310989),zoom: 14);
  late String _mapStyle;

 @override
void initState() {
  super.initState();

  rootBundle.loadString('assets/map_style.txt').then((string) {
    _mapStyle = string;
  });
}

late GoogleMapController mapController;


//...

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: _initialCameraPos,
            zoomControlsEnabled: false,
            onMapCreated: (GoogleMapController controller) {
            mapController = controller;
            mapController.setMapStyle(_mapStyle);
            }),
          Padding(
            padding: const EdgeInsets.all(30.20),
            child: Column(
              children: [
                Center(
                  child: Container(
                        width: 340,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                            ),
                            child: Material(
                              type: MaterialType.transparency,
                              child: TextField(// to trigger disabledBorder
                              style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search),
                              filled: true,
                              fillColor: Color.fromRGBO(226, 252, 229, 1),
                              enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                              ),
                              hintText: "",
                              hintStyle: TextStyle(fontSize: 16,color: Color(0xFFB3B1B1)),
                              //errorText: snapshot.error,
                          ),
                          //controller: _passwordController,
                          //onChanged: _authenticationFormBloc.onPasswordChanged,
                                                            obscureText: false,
                          ),
                            ),
                    ),
                ),
                    
              ],
            ),
          )
        ],
      ),
      floatingActionButton: ElevatedButton(
        child: Icon(Icons.list,color: Colors.black,),
        onPressed: () { 
        },
        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(color: Colors.black)
                ),
                ),
      ),     
    );
  }
}


