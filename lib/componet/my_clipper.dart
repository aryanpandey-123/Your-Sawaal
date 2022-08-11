import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    // path starts with (0.0, 0.0) point (1)
    path.lineTo(0.0, size.height - 500);
    path.quadraticBezierTo(
        size.width / 2, size.height - 350, size.width, size.height - 500);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
