// @dart=2.9
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:chainvape/model/auth.dart';
import 'package:mvc_application/prefs.dart';
import 'package:chainvape/bloc/AppUrl.dart';

class AuthRepository {

  Future loginUser (String _email, String _password, String device) async
  {
try{
 var response = await http.post(
  Uri.parse(AppUrl.Login), body:{
    'email':_email,
    'password':_password,
    'device_name':device
  }
 );

var jsonResponse = jsonDecode(response.body);
return LoginAuth.fromJson(jsonResponse);

}catch(e){
  return e;
}
  }

  Future userLogout(String token) async {

    try{
      var response = await http.post(
        Uri.parse(AppUrl.Logout),
        headers: {
          'Authorization': 'Bearer $token',
          'Accept': 'application/json'
        }
      );
      var resbody = jsonDecode(response.body);
      return Logout.fromJson(resbody);
    }catch(e)
    {return e;
    }
  }
  }

  Future hasToken() async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences local = await _prefs;
    final String token = local.getString("token_sanctum")?? null;
    if (token !=null) return token;
    return null;
  }

  Future setLocalToken(String token) async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences local = await _prefs;
    local.setString("token_sanctum", token);
  }
  Future unsetLocalToken() async{
    Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
    final SharedPreferences local = await _prefs;
    local.setString("token_sanctum", "");
  }
