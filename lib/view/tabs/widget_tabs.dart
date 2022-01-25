
part of 'tabs.dart';

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

InputDecoration buildTextfield(String HintText)
{
  return InputDecoration(                  
                          filled: true,
                          fillColor: Color(0xFFF2F2F2),
                          enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide(width: 2,color: Colors.black),
                          ),
                          hintText: HintText,
                          hintStyle: TextStyle(fontSize: 16,color: Color(0xFFB3B1B1)),
                          //errorText: snapshot.error,
                      );
  
 }