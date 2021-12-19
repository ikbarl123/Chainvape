import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blueGrey
  ),
      home: Container(
      width: 411,
      height: 731,
      decoration: BoxDecoration(
          color : Color.fromRGBO(227, 253, 229, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: -355,
        left: -1075,
        child: Container(
        width: 2560,
        height: 1440,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/Image5.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 99,
        left: 54,
        child: Container(
        width: 302,
        height: 69,
        decoration: BoxDecoration(
          image : DecorationImage(
          image: AssetImage('assets/images/Chainvapelogos_transparent21.png'),
          fit: BoxFit.fitWidth),
        )
      )
      ),
      Positioned(
        top: 200,
        left: 54,
        child: Container(
        width: 302,
        height: 69,
        decoration: BoxDecoration(
          color: Colors.transparent,
  ),
  child: Material(
    type: MaterialType.transparency,
    child: Text('Username',  
        textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Roboto',
          fontSize: 24,
          letterSpacing: 0)),
  ),
      )
      ),
      ],
      )
      )
      );
      
      
      
        }
        }
      
      

