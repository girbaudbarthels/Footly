import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:masterproject/ui/_common/views/mouse/mouseAnim.dart';
import 'package:oktoast/oktoast.dart';

class MouseWidget extends StatefulWidget {
  MouseWidget(
      {Key key,
      @required this.child,
      @required this.onTap,
      this.pay,
      this.cardText,
      this.inactive})
      : super(key: key);

  final Widget child;
  final Function onTap;
  final bool pay;
  final bool inactive;
  final String cardText;
  @override
  _MouseWidgetState createState() => _MouseWidgetState();
}

class _MouseWidgetState extends State<MouseWidget> {
  bool entered = false;
  Timer t = new Timer(Duration(seconds: 3), () {});
  AudioPlayer audioPlayer = AudioPlayer();

  Offset offset = Offset(0, 0);
  int progress = 0;

  @override
  void initState() {
    super.initState();
  }

  Timer timerDialog;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.none,
      onHover: (hover) {
        setState(() {
          offset = hover.localPosition;
        });
      },
      onEnter: (e) {
        setState(() {
          entered = true;
        });
        t = Timer.periodic(Duration(milliseconds: 20), (duration) async {
          setState(() {
            progress++;
          });

          if (progress == 100) {
            widget.onTap();
            setState(() {
              progress = 0;
            });
            if (widget.pay != null && widget.pay) {
              await audioPlayer.play('assets/pay.mp3', isLocal: true);
            } else {
              await audioPlayer.play('assets/select.mp3', isLocal: true);

              switch (widget.cardText.toString()) {
                case "Menu's":
                  break;
                case "Rundsvlees":
                  break;
                case "Kip":
                  break;
                case "Vis":
                  break;
                case "McMoment":
                  break;
                case "Veggie":
                  break;
                case "Happy Meal":
                  break;
                case "Frieten":
                  break;
                case "Desserten":
                  break;
                case "Salade":
                  break;
                case "Koude Dranken":
                  break;
                case "Warme Dranken":
                  break;
                case "Sauzen":
                  break;
                case "Starten":
                  break;
                case "null":
                  break;
                default:
                  showToast("${widget.cardText} toegevoegd",
                      position: ToastPosition.top,
                      backgroundColor: Theme.of(context).primaryColorLight);
              }
            }

            t.cancel();
          }
        });
      },
      onExit: (e) {
        setState(() {
          entered = false;
          progress = 0;

          t.cancel();
        });
      },
      child: Stack(children: [
        widget.child,
        CustomPaint(
          painter: MouseAnimation(
            offset: offset,
            progress: progress,
          ),
          child: SizedBox.expand(),
        ),
      ]),
    );
  }
}
