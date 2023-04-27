import 'package:flutter/material.dart';

class Triagle extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 3 * 2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
