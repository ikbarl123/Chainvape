import 'package:chainvape/model/vapestore.dart';
import 'package:flutter/material.dart';

class DetailStore extends StatelessWidget {
  const DetailStore({ Key? key, required this.store }) : super(key: key);

  final Vapestore store;
  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
          children: <Widget>[
          SizedBox(height: 80,),
          Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzj3zuwqgcuIdnxN0PaGXlbTNgYadtrKmuMQ&usqp=CAU", height: 184, width: 241,),
          SizedBox(height: 58,),
          title(store.namatoko??'Nama Toko here'),
          SizedBox(height: 29,),
          Expanded(
            child: Container(
              height: 194,
              width: 315,
              decoration:BoxDecoration(border:Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(children: [
                
                
              ],) ,
            ),
          ),
          SizedBox(height: 28,),
          Back2Button(context),
          
          ],
          
    ),
        ),
      ),
      //bottomSheet: ElevatedButton(onPressed: (){},child: Text(""),),
    );
  }
}

ElevatedButton Back2Button(context) {
    return ElevatedButton(
        child: Icon(Icons.arrow_back,color: Colors.black,),
        onPressed: () {  Navigator.pop(context);
        },
        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(color: Colors.black)
                ),
                ),);
      }    

Text title(String title)
{return Text(title,textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Roboto',
                fontSize: 16,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              height: 1)
              );

}