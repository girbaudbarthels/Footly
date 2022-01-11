import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masterproject/ui/_common/views/base_view.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/mouse/mouse.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool entered = false;
  @override
  Widget build(BuildContext context) {
    return BaseView<NavigationViewModel>(
      entered: entered,
      builder: (ctx, model, child) {
        return MouseRegion(
          cursor: SystemMouseCursors.none,
          child: Scaffold(
            body: Container(
              height: double.maxFinite,
              width: double.maxFinite,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'FOOTLY',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1.copyWith(
                          color: Theme.of(context).primaryColorLight,
                          fontSize: 60,
                          fontFamily: 'Poppins'),
                    ),
                    Text(
                      'EEN INTERFACE VOOR VOETEN',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1.copyWith(
                          color: Theme.of(context).primaryColorLight,
                          fontSize: 30,
                          fontFamily: 'Open Sans'),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CardContent(
                          text: 'Starten',
                          //icon: Icons.restaurant,
                          icon: null,
                          onEnter: () {
                            model.hereOrHome(true);
                            Get.to(CategoriesView());
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class CardContent extends StatefulWidget {
  const CardContent({Key key, this.text, this.icon, this.onEnter})
      : super(key: key);
  final String text;
  final String icon;
  final Function onEnter;

  @override
  _CardContentState createState() => _CardContentState();
}

Offset pointer = Offset(0, 0);
bool entered = false;

class _CardContentState extends State<CardContent> {
  Timer t = new Timer(Duration(seconds: 3), () {});

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 250,
      child: MouseWidget(
        onTap: widget.onEnter,
        cardText: widget.text,
        child: Card(
          elevation: 1,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).primaryColorLight, width: 2),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: widget.icon != null ? 20.0 : 100),
                  child: widget.icon != null
                      ? Image.asset(widget.icon)
                      : Transform.rotate(
                          angle: 42.5,
                          child: Icon(
                            FontAwesomeIcons.shoePrints,
                            size: 100,
                          ),
                        ),
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.text ?? 'Content',
                        style: Theme.of(context).textTheme.headline3.copyWith(
                            color: Theme.of(context).primaryColorLight),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
