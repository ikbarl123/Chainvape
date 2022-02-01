part of 'service.dart';

class AppUrl {

  static const String url="http://10.0.2.2:8000";
  static const String login=url+"/api/auth/login";
  static const String logout=url+"/api/auth/logout";
  static const String register=url+"/api/auth/register";
  static const String store=url+"/api/vapestore/get";
  static const String forum=url+"/api/forum";
  static const String thread=url+"/api/thread/get";
  static const String post=url+"/api/thread/create";
  static const String reply=url+"/api/thread/reply";
  //static const String apiStore="/store";
  //static const String apiFavorite="/fav";
}