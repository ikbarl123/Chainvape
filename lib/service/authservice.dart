part of 'service.dart';

class  AuthService {
  

Future doLogin(String _email, String _password) async {
  try{
  final response = await post(Uri.parse(AppUrl.login),
  headers: {'Accept': 'application/json'},
  body: {
    'email': _email,
    'password': _password
  });
 var data = jsonDecode(response.body.toString());
 print(data);
  return User.fromJson(data);

  }catch(e){
    print(e);
    return e;
  }
}

Future doRegister(String _nama, String _email, String _password,String _conpassword) async {
  try{
  final response = await post(Uri.parse(AppUrl.register),
  headers: {'Accept': 'application/json'},
  body: {
    'name':_nama,
    'email':_email,
    'password':_password,
    'password_confirmation':_conpassword
  });
 var data = jsonDecode(response.body.toString());
  print(data);

  return User.fromJson(data);
  }catch(e){
    return e;
  }
}


Future doLogout(String token) async {
  try{
  final response = await post(Uri.parse(AppUrl.logout),
  headers: {
    'Authorization': 'Bearer $token',
    'Accept': 'application/json'
  });
 var data = jsonDecode(response.body.toString());
  return data;
  }catch(e){
    return e;
  }
}

Future hasUser() async{
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final SharedPreferences local = await _prefs;
  final String user = local.getString("user")??"kosong";
  print(user);
   if(user!="kosong"){
     return User.fromJson(jsonDecode(user));
   }
  return "kosong";
}

Future setUser(User user) async{
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final SharedPreferences local = await _prefs;
  String json = userToJson(user);
  local.setString('user', json);
}

Future clearUser() async{
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final SharedPreferences local = await _prefs;
  local.setString('user', 'kosong');
  final String user = local.getString('user')??'error';
  return user;
}


}