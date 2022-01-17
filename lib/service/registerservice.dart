part of 'service.dart';

void doRegister(String email, password) async{
  try{
    Response response = await post(Uri.parse(AppUrl.login),
    body:{
      'email' : email,
      'password': password
    } ); 
    if (response.statusCode==200) {
      print('account created');
      
    }
    else{
      print('failed');
    }
  } 
  catch(e){
    print(e.toString());
  }
}