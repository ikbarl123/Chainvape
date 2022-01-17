import 'dart:async';
import 'dart:html';

import 'package:chainvape/model/userlocation.dart';
import 'package:location/location.dart';

class LocationService {
  Location location = Location();

  StreamController<UserLocation> _locationStreamController = StreamController<UserLocation>();
  Stream<UserLocation> get locationStream => _locationStreamController.stream;

  LocationService(){
    location.requestPermission().then((permissionStatus){
      if(permissionStatus == PermissionStatus.granted){
          location.onLocationChanged.listen((locationData) {
            if(LocationData != null){
              _locationStreamController.add(UserLocation(latitude: locationData.latitude, longtitude: locationData.longitude));
            };
          
          });
      return location;
        
      }
    });
  }
  void dispose() => _locationStreamController;}