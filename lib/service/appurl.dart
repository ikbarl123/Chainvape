part of 'service.dart';

class AppUrl {

  static const String url="http://10.0.2.2:8000/api";
  static const String login=url+"/auth/login";
  static const String logout=url+"/auth/logout";
  static const String register=url+"/auth/register";
  static const String store=url+"/vapestore/get";
  static const String forum=url+"/forum";
  static const String thread=url+"/thread/get/";
  static const String post=url+"/thread/create";
  static const String reply=url+"/thread/reply";
  //static const String apiStore="/store";
  //static const String apiFavorite="/fav";
}