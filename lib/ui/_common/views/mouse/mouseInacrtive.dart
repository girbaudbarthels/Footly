import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:masterproject/ui/_common/views/mouse/mouseAnim.dart';

class MouseInactiveWidget extends StatefulWidget {
  MouseInactiveWidget({Key key, this.child}) : super(key: key);
  final Widget child;
  @override
  _MouseInactiveWidgetState createState() => _MouseInactiveWidgetState();
}

class _MouseInactiveWidgetState extends State<MouseInactiveWidget> {
  bool entered = false;
  Timer t = new Timer(Duration(seconds: 3), () {});
  AudioPlayer audioPlayer = AudioPlayer();

  Offset offset = Offset(0, 0);
  int progress = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.none,
      onHover: (hover) {
        setState(() {
          offset = hover.localPosition;
        });
      },
      child: Stack(alignment: Alignment.center, children: [
        widget.child,
        CustomPaint(
          painter: MouseAnimation(
            offset: offset,
            progress: progress,
            inactive: true,
          ),
          child: SizedBox.expand(),
        ),
      ]),
    );
  }
}
