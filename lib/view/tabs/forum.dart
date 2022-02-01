part of 'tabs.dart';



class Forum extends StatelessWidget {
  const Forum({ Key? key }) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(226, 252, 229, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(height: 50,),
              Container(
                height: 50,
                width: 600,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)))),
                child: ListTile(
                  leading: Icon(Icons.portrait_rounded, color: Colors.black,),
                  title: Text('hai user'),
                trailing: IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () { Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CreateThread()));
                      },
                              ),
                  )
              ),
              SizedBox(height: 40,),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ThreadView()));
                },
                child: Container(
                  height: 300,
                  width: 600,
                   decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
                  child: Center(
                    child: Column(
                      children: [
                        ListTile(title: Text('test'),
                        subtitle: Text('test'),
                        leading: Text('date'),),
                        Divider(height: 1,color: Colors.black,),
                        SizedBox(height: 5,),
                      Expanded(child: 
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue ex vehicula, elementum turpis non, bibendum enim. Nulla dignissim quam sed mi consectetur convallis consequat a magna. Nulla dignissim turpis id commodo varius. Etiam vel dolor a justo cursus finibus. Integer mattis a augue id faucibus. Integer finibus arcu a gravida rhoncus. Fusce iaculis dui a ex commodo, in aliquet quam euismod. Praesent sollicitudin metus sed nisl pharetra, vel feugiat ex varius. Mauris rutrum leo sapien, at ullamcorper magna tincidunt id. Etiam hendrerit sodales dolor. Pellentesque consectetur, enim eleifend interdum rutrum, elit ligula dignissim dolor, eu pellentesque risus est in orci. Pellentesque malesuada nisl ligula, at semper nunc maximus et. Duis magna magna, interdum at nulla eget, mollis convallis metus. Phasellus ac libero fringilla orci posuere elementum. Ut sed venenatis dui, nec pharetra purus.')),
                      ))
                    ],),
                  ),
                ),
              ),SizedBox(height: 40,),InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ThreadView()));
                },
                child: Container(
                  height: 300,
                  width: 600,
                   decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
                  child: Center(
                    child: Column(
                      children: [
                        ListTile(title: Text('test'),
                        subtitle: Text('test'),
                        leading: Text('date'),),
                        Divider(height: 1,color: Colors.black,),
                        SizedBox(height: 5,),
                      Expanded(child: 
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue ex vehicula, elementum turpis non, bibendum enim. Nulla dignissim quam sed mi consectetur convallis consequat a magna. Nulla dignissim turpis id commodo varius. Etiam vel dolor a justo cursus finibus. Integer mattis a augue id faucibus. Integer finibus arcu a gravida rhoncus. Fusce iaculis dui a ex commodo, in aliquet quam euismod. Praesent sollicitudin metus sed nisl pharetra, vel feugiat ex varius. Mauris rutrum leo sapien, at ullamcorper magna tincidunt id. Etiam hendrerit sodales dolor. Pellentesque consectetur, enim eleifend interdum rutrum, elit ligula dignissim dolor, eu pellentesque risus est in orci. Pellentesque malesuada nisl ligula, at semper nunc maximus et. Duis magna magna, interdum at nulla eget, mollis convallis metus. Phasellus ac libero fringilla orci posuere elementum. Ut sed venenatis dui, nec pharetra purus.')),
                      ))
                    ],),
                  ),
                ),
              ),SizedBox(height: 40,),
            ],),
          ),
        )
      
    ));
  }
}