import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class home extends StatelessWidget {
  const home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return       // Figma Flutter Generator HomeWidget - FRAME
      Container(
      width: 411,
      height: 624,
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
        top: 384.1313171386719,
        left: 179,
        child: SvgPicture.asset(
        'assets/images/vector1.svg',
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
      ),
        ]
      )
    );
  }
}