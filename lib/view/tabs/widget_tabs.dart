
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