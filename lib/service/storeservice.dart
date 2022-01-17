part of 'service.dart';




class StoreService {

  List<Vapestore> storeList = [];
  Future<List<Vapestore>> getStoreList() async{
    final response = await http.get(Uri.parse(AppUrl.me));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200){
      for(Map i in data){
        storeList.add(Vapestore.fromJson(i));
      }
      return storeList;
      
    }else{
      return storeList;
    }
  }

  
}