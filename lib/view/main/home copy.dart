import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class home extends StatelessWidget {
  const home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 411,
      height: 731,
      decoration: BoxDecoration(
          color : Color.fromRGBO(226, 252, 229, 1),
  ),
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: -10,
        child: Container(
        width: 421,
        height: 624,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
      image : DecorationImage(
          image: AssetImage('assets/images/Image1.png'),
          fit: BoxFit.fitWidth
      ),
  )
      )
      ),Positioned(
        top: 450,
        left: 179,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 40,
        left: 35,
        child: Container(
        width: 340,
        height: 45,
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
      color : Color.fromRGBO(193, 225, 195, 1),
  )
      )
      ),Positioned(
        top: 654,
        left: 67,
        child: Container(
      width: 289,
      height: 52,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 239,
        child: Container(
      width: 50,
      height: 50,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color : Color.fromRGBO(231, 231, 231, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(50, 50)),
  )
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 2,
        left: 0,
        child: Container(
      width: 50,
      height: 50,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color : Color.fromRGBO(93, 176, 117, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(50, 50)),
  )
      )
      ),Positioned(
        top: 3,
        left: 4,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 8.25,
        left: 7.5,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 0,
        left: 122,
        child: Container(
      width: 50,
      height: 50,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color : Color.fromRGBO(231, 231, 231, 1),
      borderRadius : BorderRadius.all(Radius.elliptical(50, 50)),
  )
      )
      ),
        ]
      )
    )
      ),Positioned(
        top: 9,
        left: 135,
        child: Container(
      width: 23,
      height: 35,
      
      child: Stack(
        children: <Widget>[
          Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/vector.svg',
        semanticsLabel: 'vector'
      )
      ),Positioned(
        top: 0,
        left: 0,
        child: SvgPicture.asset(
        'assets/images/vector1.svg',
        semanticsLabel: 'vector1'
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
      )
    );
  }
}