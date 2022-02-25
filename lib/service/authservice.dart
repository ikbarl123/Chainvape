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
if(response.statusCode==401){
     return data['message'];
   } else 
   if(response.statusCode==201){
    return User.fromJson(data);
   } return "Unkown error";
  }catch(e){
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
 var data = jsonDecode(response.body);
print(response.body);
print(response.statusCode);


   if(response.statusCode == 422){
     if (data['errors']['name'][0]=="The name field is required."){
       return 'nama tidak boleh kosong';
     } else if (data['errors']['email'][0]=="The email has already been taken."){
       return 'email sudah digunakan';
     } else if (data['errors']['email'][0]=="The email must be a valid email address."){
       return 'email tidak valid';
     } else if (data['errors']['email'][0]=="The email field is required."){
       return 'email tidak boleh kosong';
     } else if (data['errors']['password'][0]=="The password field is required."){
      return 'password tidak boleh kosong';
     } else if (data['errors']['password'][0]=="The password must be at least 8 characters."){
       return 'password minimal 8 karakter';
     } else if (data['errors']['password'][0]=="The password confirmation does not match."){
       return 'konfirmasi password tidak sesuai';
     } else {
       return "Silahkan isi semua form";
     }
   } 
   if(response.statusCode==201){
    return User.fromJson(data);
   } return "Unkown error";


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
  local.setString('token', user.token);
}

Future clearUser() async{
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final SharedPreferences local = await _prefs;
  local.setString('user', 'kosong');
  final String user = local.getString('user')??'error';
  return user;
}


}