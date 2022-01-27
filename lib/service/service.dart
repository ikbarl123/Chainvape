import 'dart:convert';
import 'dart:async';


//package
import 'package:chainvape/model/user.dart';
import 'package:http/http.dart';
import 'package:location/location.dart';
import 'package:shared_preferences/shared_preferences.dart';

//model
import 'package:chainvape/model/userlocation.dart';
import 'package:chainvape/model/vapestore.dart';
import 'package:chainvape/model/thread.dart';
import 'package:chainvape/model/replies.dart';

//children
part 'appurl.dart';
part 'locationservice.dart';
part 'storeservice.dart';
part 'authservice.dart';
part 'threadservice.dart';