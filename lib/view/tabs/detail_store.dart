part of 'tabs.dart';

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
          Image.network(store.imgurl??"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzj3zuwqgcuIdnxN0PaGXlbTNgYadtrKmuMQ&usqp=CAU", height: 184, width: 241,),
          SizedBox(height: 58,),
          title(store.namatoko??'Nama Toko here'),
          SizedBox(height: 29,),
          Expanded(
            child: Center(
              child: Container(
                height: 194,
                width: 315,
                decoration:BoxDecoration(border:Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(children: [
                  Text("Alamat :" ),
                  Text(store.alamat??'error')
                  
                ],) ,
              ),
            ),
          ),
          SizedBox(height: 28,),
          BacksButton(context),
          
          ],
          
    ),
        ),
      ),
      //bottomSheet: ElevatedButton(onPressed: (){},child: Text(""),),
    );
  }
}

