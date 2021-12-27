import 'package:flutter/material.dart';
import 'package:chainvape/view/auth/login.dart';
import 'package:chainvape/view/main/home.dart';


class Splash extends StatelessWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  home: Container(
      width: 411,
      height: 731,
      decoration: BoxDecoration(
          color : Color.fromRGBO(227, 253, 229, 1),
  ),
      child: Center(
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
            fit: BoxFit.cover
        ),
  )
        )
        ),Positioned(
          top: 0,
          left: -180,
          child: Container(
          width: 882,
          height: 731,
          decoration: BoxDecoration()
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
        ),Positioned(
          top: 560,
          left: 195,
          child: Container(
        width: 170,
        height: 74,
        decoration: BoxDecoration(
            color: Colors.transparent,
  ),
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 0,
          left: 0,
          child: Container(
          width: 170,
          height: 74,
          child: ElevatedButton(
 
  onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  );
  },
  child: Text('Login'),
  style: ElevatedButton.styleFrom(
    primary: Color.fromRGBO(30, 81, 40, 1),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(20),
            ),
  ),
  //color : 
)
),
        )
        )   
          ]
        )
    )
        ),Positioned(
          top: 560,
          left: 30,
          child: Container(
        width: 170,
        height: 74,
        decoration: BoxDecoration(
            color: Colors.transparent,
  ),
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 0,
          left: 0,
          child: Container(
        width: 170,
        height: 74,
        
        child: Stack(
          children: <Widget>[
            Positioned(
          top: 0,
          left: 0,
          child: Container(
          width: 170,
          height: 74,
          child: ElevatedButton(
  onPressed: () {},
  child: Text('Register'),
  style: ElevatedButton.styleFrom(
    primary: Color.fromRGBO(25, 26, 25, 1),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(0),
            ),
  ),
  //color : Color.fromRGBO(25, 26, 25, 1),
)
),
        )
        ),
          ]
        )
    )
        ),
          ]
        )
    )
        ),
          ]
        ),
      )
    ));
          }
        }
    

    class BaseLayout extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Image5.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Splash() /* add child content here */,
      ),
    );
  }
}