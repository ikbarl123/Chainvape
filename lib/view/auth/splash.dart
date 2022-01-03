import 'package:chainvape/view/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:chainvape/view/auth/login.dart';
import '';




class authBase extends StatelessWidget {
  const authBase({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Image5.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(child: authPage()),
          );
  }
}

class authPage extends StatelessWidget {
  const authPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ 
        Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 52,),
        Image.asset('assets/images/Chainvapelogos_transparent21.png',
        height: 69, width: 302,),
        SizedBox(height: 300,),
        authButton(),     
      ]
      ),
    ]);
  }
}




class authButton extends StatelessWidget {
  const authButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 170,
          height: 74,
          child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                },
                child: Text('Register',style: TextStyle(color: Colors.white),),
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
        ),
        Container(
          width: 170,
          height: 74,
          child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                    },
                    child: Text('Login',style: TextStyle(color: Colors.white)),
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
                  )
                  ),
        ),
        
      ],
      
    );
  }
}
