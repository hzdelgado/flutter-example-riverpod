import 'package:flutter/material.dart';

class WhiteClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 3+50);
    var firstControlPoint = Offset(size.width / 4, size.height / 3 - 50);
    var firstEndPoint = Offset(size.width / 2, size.height / 3 -50);
    var secondControlPoint = Offset(size.width * 3/4, size.height / 3 - 50);
    var secondEndPoint = Offset(size.width, size.height / 3+50);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
