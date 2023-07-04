import 'package:flutter/material.dart';

class BlueClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 4 - 30);
    var firstControlPoint = Offset(size.width / 4 - 50, size.height / 4);
    var firstEndPoint = Offset(size.width / 4, size.height / 4 - 70);
    var secondControlPoint = Offset(size.width / 2 - 20, 0);
    var secondEndPoint = Offset(size.width / 2, 0);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
