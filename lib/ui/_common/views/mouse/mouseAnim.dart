import 'dart:async';

import 'package:flutter/material.dart';

class MouseAnimation extends CustomPainter {
  MouseAnimation({this.offset, this.progress, this.inactive});

  final Offset offset;
  final int progress;
  final bool inactive;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.red;
    paint.strokeWidth = 5;

    canvas.drawCircle(Offset(offset.dx, offset.dy), progress.toDouble(), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
