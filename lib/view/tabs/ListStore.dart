import 'package:chainvape/model/vapestore.dart';
import 'detail_store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ListVapeStorePage extends StatefulWidget {
  const ListVapeStorePage({ Key? key }) : super(key: key);

  @override
  _ListVapeStorePageState createState() => _ListVapeStorePageState();
}

class _ListVapeStorePageState extends State<ListVapeStorePage> {
    List<Vapestore> listvapestore=[

  ];

  
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          SearchButton(),
          Expanded(child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index)
              {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: ListTile(
                title: Text("listvapestore[index].getnama()"),
                leading: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzj3zuwqgcuIdnxN0PaGXlbTNgYadtrKmuMQ&usqp=CAU"),
                trailing: IconButton(icon:Icon(Icons.star_border), onPressed: () { 
                  
                 },),
                onTap:  () {Get.to(() =>(DetailStore(store: listvapestore[index],))); },
                ),
              );
            }
            ),
          
        ),
        
        BackButton(context),

        ],
        
    ),
      ),
      //bottomSheet: ElevatedButton(onPressed: (){},child: Text(""),),
    );
  }
}

ElevatedButton BackButton(context) {
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

      Center SearchButton() {
  return Center(
                  child: Container(
                        width: 340,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                            ),
                            child: Material(
                              type: MaterialType.transparency,
                              child: TextField(// to trigger disabledBorder
                              style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.search),
                              filled: true,
                              fillColor: Color.fromRGBO(226, 252, 229, 1),
                              enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                              ),
                              hintText: "",
                              hintStyle: TextStyle(fontSize: 16,color: Color(0xFFB3B1B1)),
                              //errorText: snapshot.error,
                          ),
                          //controller: _passwordController,
                          //onChanged: _authenticationFormBloc.onPasswordChanged,
                                                            obscureText: false,
                          ),
                            ),
                    ),
                );
  
}
