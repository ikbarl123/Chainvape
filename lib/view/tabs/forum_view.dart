part of 'tabs.dart';

class ThreadView extends StatelessWidget {
  const ThreadView({ Key? key }) : super(key: key);

  Widget build(BuildContext context) {
     TextEditingController _textController = new TextEditingController();
    return Scaffold(
      //create invisible appbar with black text and black back button
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Thread',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Color.fromRGBO(226, 252, 229, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              // SizedBox(height: 10,),
              Center(
                  child: Container(
                  height: 500,
                  width: 600,
                   decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
                  child: Center(
                    child: Column(
                      children: [
                        ListTile(title: Text('Title'),
                        subtitle: Text('created by #name'),
                        trailing: Text('date'),),
                        Divider(height: 1,color: Colors.black,),
                        SizedBox(height: 5,),
                      Expanded(child: 
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue ex vehicula, elementum turpis non, bibendum enim. Nulla dignissim quam sed mi consectetur convallis consequat a magna. Nulla dignissim turpis id commodo varius. Etiam vel dolor a justo cursus finibus. Integer mattis a augue id faucibus. Integer finibus arcu a gravida rhoncus. Fusce iaculis dui a ex commodo, in aliquet quam euismod. Praesent sollicitudin metus sed nisl pharetra, vel feugiat ex varius. Mauris rutrum leo sapien, at ullamcorper magna tincidunt id. Etiam hendrerit sodales dolor. Pellentesque consectetur, enim eleifend interdum rutrum, elit ligula dignissim dolor, eu pellentesque risus est in orci. Pellentesque malesuada nisl ligula, at semper nunc maximus et. Duis magna magna, interdum at nulla eget, mollis convallis metus. Phasellus ac libero fringilla orci posuere elementum. Ut sed venenatis dui, nec pharetra purus.'),
                      ))
                    ],),
                  ),
                ),
            ),
            SizedBox(height: 20,),
            Align(
                                alignment: Alignment.centerLeft,
                                child: buildText("Reply")
                ),
                SizedBox(height: 20,),

              Center(
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
                        ListTile(title: Text('username'),
                        leading: Icon(Icons.portrait_rounded),
                        trailing: Text('date'),),
                        Divider(height: 1,color: Colors.black,),
                        SizedBox(height: 5,),
                      Expanded(child: 
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue ex ve'),
                      ))
                    ],),
                  ),
                ),
            ),
            SizedBox(height: 20,),
             Center(
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
                        ListTile(title: Text('username'),
                        leading: Icon(Icons.portrait_rounded),
                        trailing: Text('date'),),
                        Divider(height: 1,color: Colors.black,),
                        SizedBox(height: 5,),
                      Expanded(child: 
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi congue ex ve'),
                      ))
                    ],),
                  ),
                ),
            ),
            SizedBox(height: 20,),
                        Align(
                                alignment: Alignment.centerLeft,
                                child: buildText("Post Reply")),
            SizedBox(height: 20,),
            Center(
                              child: Container(
                                width: 343,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                ),
                                child: TextField(
                                  maxLines: 10,
                                    style: TextStyle(color: Colors.black),
                                    decoration: buildTextfield(""),
                                    controller: _textController,
                                    obscureText: false,
                                  ),
                              ),
            ), 

            SizedBox(height: 10,),
            Align(
               
                              alignment: Alignment.centerRight,
                              child: Container(
                                  width: 142,
                                  height: 52,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: ElevatedButton(
                                    onPressed: (){},
                                    child: Text(
                                      'Reply',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromRGBO(30, 81, 40, 1),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                    ),
                                  )),
                            ),
            SizedBox(height: 20,),
            ],),
          ),
        )
      
    ));
  }
}