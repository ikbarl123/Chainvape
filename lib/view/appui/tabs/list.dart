import 'dart:ui';

import 'package:chainvape/model/vapestore.dart';
import 'package:flutter/material.dart';


class ListStore extends StatefulWidget {
  const ListStore({ Key? key }) : super(key: key);

  @override
  _ListStoreState createState() => _ListStoreState();
}

class _ListStoreState extends State<ListStore> {

 // List listvapestore=[];

  List<Vapestore> listvapestore=[
    Vapestore("10000",20.0,20.0,"PTalimuntung","bandung","404",58),
    Vapestore("20000",20.0,20.0,"aku","bandung","404",58),
    Vapestore("30000",20.0,20.0,"gantebf","bandung","404",58),
    Vapestore("410000",20.0,20.0,"gantebf","bandung","404",58),
  ];


 
  
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
            ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index)
              {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: ListTile(
                title: Text(listvapestore[index].getnama()),
                leading: Image.network("https://ikbarl.my.id/storage/images/gambar/5th%20Wave.jpg"),
                trailing: IconButton(icon:Icon(Icons.favorite), onPressed: () {  },),
                onTap:  () { },
                ),
              );
            }
            ),
          ],
        ),
      ),
      
    );
  }
}