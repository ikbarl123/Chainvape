part of 'service.dart';

class ThreadService {

  List<Thread> threadList = [];
  Future<List<Thread>> getThreadList() async{
    try{
    final response = await get(Uri.parse(AppUrl.forum));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map i in data){
        print(response.body);
        threadList.add(Thread.fromJson(i));
      }
      return threadList;  
    }else{
      return threadList;
    }
    }catch(e)
    {
      rethrow;
    }
  } 

  List<Replies> repliesList = [];
  Future<List<Replies>> getReplies() async{
    try{
    final response = await post(Uri.parse(AppUrl.thread));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map i in data){
        print(response.body);
        repliesList.add(Replies.fromJson(i));
      }
      return repliesList;  
    }else{
      return repliesList;
    }
    }catch(e)
    {
      rethrow;
    }
  } 

  Future CreatePost(int _id, String _title, String _text,) async {
      Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  
  try{
    final SharedPreferences local = await _prefs;
  final String token = local.getString("token")??"kosong";
  final response = await post(Uri.parse(AppUrl.post),
  headers: {
    'Authorization': 'Bearer $token',
    'Accept': 'application/json'
    },
  body: {
    'title':_title,
    'text':_text,
  });
 var data = jsonDecode(response.body.toString());
  print(data);

  //return User.fromJson(data);
  }catch(e){
    return e;
  }
}

Future CreateReply(int _postID,int _id, String _text,) async {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  
  try{
    final SharedPreferences local = await _prefs;
  final String token = local.getString("token")??"kosong";
  final response = await post(Uri.parse(AppUrl.reply),
  headers: {
    'Authorization': 'Bearer $token',
    'Accept': 'application/json'
    },
  body: {
    'post_id':_postID,
    'password':_text,
  });
 var data = jsonDecode(response.body.toString());
  print(data);

 // return User.fromJson(data);
  }catch(e){
    return e;
  }
}
}