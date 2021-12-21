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
        top: 71,
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
        top: 178,
        left: 34,
        child: Container(
        width: 343,
        height: 36,
        decoration: BoxDecoration(
          color: Colors.transparent,
  ),
  child: Material(
    type: MaterialType.transparency,
    child: Text('Log In',  
        textAlign: TextAlign.center, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Roboto',
          fontSize: 30,
          letterSpacing: 0,
          fontWeight: FontWeight.bold,
        height: 1)),
  ),
      )
      ),
      Positioned(
        top: 270,
        left: 56,
        child: Container(
        width: 127,
        height: 28,
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
          letterSpacing: 0,
          fontWeight: FontWeight.bold,
        height: 1)),
          
  ),
      )
      ),
      Positioned(
        top: 307,
        left: 34,
        child: Container(
        width: 343,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.transparent,
  ),
  child: Material(
    child: TextField(// to trigger disabledBorder
    style: TextStyle(color: Colors.black),
 decoration: InputDecoration(
     
     filled: true,
     fillColor: Color(0xFFF2F2F2),
     enabledBorder: OutlineInputBorder(
       borderRadius: BorderRadius.all(Radius.circular(8)),
       borderSide: BorderSide(width: 2,color: Colors.black),
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
      )
      ),
      Positioned(
        top: 366,
        left: 56,
        child: Container(
        width: 127,
        height: 28,
        decoration: BoxDecoration(
          color: Colors.transparent,
  ),
  child: Material(
    type: MaterialType.transparency,
    child: Text('Password',  
        textAlign: TextAlign.left, style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, 1),
          fontFamily: 'Roboto',
          fontSize: 24,
          letterSpacing: 0,
          fontWeight: FontWeight.bold,
        height: 1)),
  ),
      )
      ),Positioned(
        top: 401,
        left: 34,
        child: Container(
        width: 343,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.transparent,
  ),
  child: Material(
    child: TextField(// to trigger disabledBorder
    style: TextStyle(color: Colors.black),
 decoration: InputDecoration(
     
     filled: true,
     fillColor: Color(0xFFF2F2F2),
     enabledBorder: OutlineInputBorder(
       borderRadius: BorderRadius.all(Radius.circular(8)),
       borderSide: BorderSide(width: 2,color: Colors.black),
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
      )
      ),
      Positioned(
        top: 473,
        left: 224,
        child: Container(
        width: 142,
        height: 52,
        decoration: BoxDecoration(
          color: Colors.transparent,
  ),
  child: ElevatedButton(
 
  onPressed: () {},
  child: Text('Login'),
  style: ElevatedButton.styleFrom(
    primary: Color.fromRGBO(30, 81, 40, 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
            bottomLeft: Radius.circular(22),
            bottomRight: Radius.circular(22),
          ),
  ),
  //color : 
)
),
      )
      ),
      ],
      )
      )
      );
      
      
      
        }
        }
      
      

