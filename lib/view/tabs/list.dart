import 'dart:ui';
import 'dart:convert';

import 'package:chainvape/model/vapestore.dart';
import 'package:chainvape/service/appurl.dart';
import 'ListStore.dart';
import 'detail_store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chainvape/service/storeservice.dart';
import 'package:http/http.dart' as http;



class ListStore extends StatefulWidget {
  const ListStore({ Key? key }) : super(key: key);

  @override
  _ListStoreState createState() => _ListStoreState();
}

class _ListStoreState extends State<ListStore> {

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
      return storeList;}
      }
    
  
    @override
    
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("List"),
            SizedBox(height: 10,),
            Divider(color: Colors.black,),
           // SizedBox(height: 10,),
            Expanded(
              child: FutureBuilder(
                future: getStoreList(),
                builder: (context,snapshot) {
                  if(!snapshot.hasData){
                      return Text("loading");
                  }else{
                    print("Panjang");
                    print(storeList.length);
                    return ListView.builder(
                    shrinkWrap: true,
                    itemCount: storeList.length,
                    itemBuilder: (context, index)
                    {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: ListTile(
                      title: Text("dummy"),//Text(StoreService().storeList[index].namatoko??"Title"),
                      leading: Text("dummy"),//Image.network(StoreService().storeList[index].imgurl??"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzj3zuwqgcuIdnxN0PaGXlbTNgYadtrKmuMQ&usqp=CAU"),
                      trailing: IconButton(icon:Icon(Icons.star), onPressed: () { 
                        
                       },),
                      onTap:  () {  Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailStore(store: storeList[index],) )); },
                      ),
                    );
                  }
                  );
                  }
                }
              ),
            ),
          ],
        ),
      ),
      
    );
  }}