import 'package:flutter/material.dart';
import 'package:chainvape/view/main/base.dart';

class Register extends StatefulWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Image5.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
      children: [ 
        Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 52,),
        Image.asset('assets/images/Chainvapelogos_transparent21.png',
        height: 69, width: 302,),
        SizedBox(height: 80,),
        Material(
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
        Align(
              alignment: Alignment.centerLeft,
              child: Material(
                        type: MaterialType.transparency,
                        child: Text('Username',  
                                textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                height: 1
                      )),),
            ),
            Center(
              child: Container(
              width: 343,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                  ),
                  child: Material(
                    type: MaterialType.transparency,
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
          ),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Material(
                        type: MaterialType.transparency,
                        child: Text('Password',  
                                textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                height: 1
                      )),),
            ),
            Center(
              child: Container(
              width: 343,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                  ),
                  child: Material(
                    type: MaterialType.transparency,
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
                                                  obscureText: true,
                ),
                  ),
          ),
            ),
        SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Material(
                        type: MaterialType.transparency,
                        child: Text('Confirm Password',  
                                textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'Roboto',
                                  fontSize: 24,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                height: 1
                      )),),
            ),
            Center(
              child: Container(
              width: 343,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                  ),
                  child: Material(
                    type: MaterialType.transparency,
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
                                                  obscureText: true,
                ),
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
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainLayout()),);
                  },
                  child: Text('Register', style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(30, 81, 40, 1),
                    shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(22),
                                topRight: Radius.circular(22),
                                bottomLeft: Radius.circular(22),
                                bottomRight: Radius.circular(22),
                        ),
          ),),)),
        ),
        
      ]
      ),
    ])
          );
  }
}