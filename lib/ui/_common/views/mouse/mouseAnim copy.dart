import 'dart:async';

import 'package:flutter/material.dart';

class MouseInactive extends CustomPainter {
  MouseInactive({
    this.offset,
    this.progress,
  });

  final Offset offset;
  final int progress;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.grey;
    paint.strokeWidth = 10;
    paint.style = PaintingStyle.stroke;
    // canvas.drawCircle(Offset(offset.dx, offset.dy), 50, paint);

    canvas.drawLine(Offset(offset.dx - 50, offset.dy),
        Offset(offset.dx - 50, offset.dy - 100), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
