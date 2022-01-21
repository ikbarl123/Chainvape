part of 'service.dart';

class StoreService {

  List<Vapestore> storeList = [];
  Future<List<Vapestore>> getStoreList() async{
    final response = await get(Uri.parse(AppUrl.store));
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