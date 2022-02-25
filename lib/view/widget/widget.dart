import 'package:flutter/material.dart';

InputDecoration buildTextfield(String HintText)
{
  return InputDecoration(                  
                          filled: true,
                          fillColor: Colors.white,
                          hintText: HintText,
                          hintStyle: TextStyle(fontSize: 16,color: Color.fromARGB(255, 43, 36, 36)),
                          errorStyle: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),
                      );
  
 }

 Material buildTitle(String title)
 {
   return Material(
          type: MaterialType.transparency,
          child: Text(title,  
              textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Roboto',
                fontSize: 30,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              height: 1)),
        );
 }

 Material buildText(String text)
 {
   return Material(
                              type: MaterialType.transparency,
                              child: Text(text,  
                                      textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 24,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.bold,
                                      height: 1
                            )),);
 }

 BoxDecoration BuildBG(){
   return BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Image5.png'),
              fit: BoxFit.cover,
            ),
          );
 }
 
 
ElevatedButton BacksButton(context) {
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

