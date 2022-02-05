part of 'service.dart';

class ThreadService {


  Future<List<Thread>> getThreadList() async{
      List<Thread> threadList = [];
    threadList.clear();
    try{
    final response = await get(Uri.parse(AppUrl.forum));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map i in data){;
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



  List<Reply> repliesList = [];
  Future<List<Reply>> getReplies(int id) async{
    try{
    final response = await get(Uri.parse(AppUrl.thread+"$id"));
    
    if(response.statusCode==200){
      var data = jsonDecode(response.body.toString());
      for(Map i in data){
        repliesList.add(Reply.fromJson(i));
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

  Future CreatePost(String _title, String _text,) async {
      Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  
  try{
    final SharedPreferences local = await _prefs;
  final String token = local.getString("token")??"kosong";
  final response = await post(Uri.parse(AppUrl.post),
  headers: {
    'Authorization': 'Bearer ${token.toString()}',
    'Accept': 'application/json'
    },
  body: {
    'title':_title,
    'text':_text,
  });

  var data = jsonDecode(response.body.toString());
  if(response.statusCode==201){

      var thread = Thread.fromJson(data[0]);
      return thread;
   }else 
   return {"Unkown error"};

  }catch(e){
    print(e);
    }
    }

Future CreateReply(int _postID, String _text,) async {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  List<Reply> replies =[];
  try{
    final SharedPreferences local = await _prefs;
  final String token = local.getString("token")??"kosong";
  final response = await post(Uri.parse(AppUrl.reply),
  headers: {
    'Authorization': 'Bearer ${token.toString()}',
    'Accept': 'application/json'
    },
  body: {
    'post_id':_postID.toString(),
    'text':_text,
  });
     var data = jsonDecode(response.body.toString());

 if(response.statusCode==201){
   dynamic json = jsonDecode(response.body.toString());
      var reply = Reply.fromJson(json[0]);

      replies.add(reply);
      return replies;
   }else 
   return {"Unkown error"};

  }catch(e){
    print(e);}
    }
    }