
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';


class BottomLeftCurveClipper extends CustomClipper<ui.Path> {
  @override
  ui.Path getClip(ui.Size size) {
    var path = ui.Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(30, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - 20);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}