import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mvc_application/view.dart';


class Gmap extends StatefulWidget {
  const Gmap({ Key? key }) : super(key: key);

  @override
  _GmapState createState() => _GmapState();
}

class _GmapState extends State<Gmap> {
  static const _initialCameraPos= CameraPosition(target: LatLng(0, 0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: _initialCameraPos,
            zoomControlsEnabled: false,
          ),
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
                              fillColor: Color(0xFFF2F2F2),
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
      )     
    );
  }
}


