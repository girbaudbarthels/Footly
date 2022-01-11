import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/mouse/mouse.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';
import 'dart:convert';
import 'dart:math';

class OrderView extends StatefulWidget {
  const OrderView({Key key, this.order}) : super(key: key);
  final List order;

  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  List<String> order;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    order = widget.order;
  }

  Timer timerDialog;

  @override
  Widget build(BuildContext context) {
    var navModel = locator<NavigationViewModel>();
    ScrollController jeng = ScrollController();

    return Scaffold(
      body: Container(
        //color: Theme.of(context).primaryColorLight,
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Jouw bestelling',
                    textAlign: TextAlign.left,
                    style: Theme.of(context)
                        .textTheme
                        .headline1
                        .copyWith(color: Colors.black, fontSize: 40),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ListView.builder(
                controller: jeng,
                padding: const EdgeInsets.only(bottom: 150.0, top: 0),
                itemCount: widget.order.length,
                itemBuilder: (context, index) {
                  if (widget.order[index].length > 20) {
                    String str = widget.order[index];

                    final removedBrackets = str.substring(1, str.length - 1);
                    final parts = removedBrackets.split(', ');
                    var joined = parts.map((i) => i.trim()).toList();
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CardOrder(
                          isMenu: true,
                          item1: joined[0],
                          item2: joined[1],
                          item3: joined[2],
                          item4: joined[3],
                          item5: joined[4],
                          order: str,
                          fullOrder: widget.order,
                          onEnter: () {
                            setState(() {
                              widget.order.remove(str);
                            });
                            navModel.removeMenuOrder(widget.order);

                            timerDialog = Timer(Duration(seconds: 3), () {
                              Get.back();
                            });
                            Get.dialog(SimpleDialog(
                              children: [
                                Text(
                                  joined[0].contains('menu')
                                      ? joined[0]
                                      : joined[0] + ' menu',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'is verwijderd',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black54),
                                ),
                              ],
                            ));
                          },
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: CardOrder(
                            isMenu: false,
                            item1: widget.order[index],
                            fullOrder: widget.order,
                            onEnter: () {
                              timerDialog = Timer(Duration(seconds: 3), () {
                                Get.back();
                              });
                              Get.dialog(SimpleDialog(
                                children: [
                                  Text(
                                    widget.order[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'is verwijderd',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black54),
                                  ),
                                ],
                              ));
                              setState(() {
                                widget.order.remove(widget.order[index]);
                              });
                              navModel.removeMenuOrder(widget.order);
                            },
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
            BottomNavBar(
              jeng: jeng,
              orderScreen: true,
            )
          ],
        ),
      ),
    );
  }
}

class CardOrder extends StatefulWidget {
  const CardOrder(
      {Key key,
      this.text,
      this.icon,
      this.onEnter,
      @required this.isMenu,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.item5,
      this.order,
      this.fullOrder})
      : super(key: key);
  final String text;
  final String icon;
  final String item1;
  final String item2;
  final String item3;
  final String item4;
  final String item5;
  final Function onEnter;
  final bool isMenu;
  final String order;
  final List<String> fullOrder;
  @override
  _CardOrderState createState() => _CardOrderState();
}

Offset pointer = Offset(0, 0);
bool entered = false;

class _CardOrderState extends State<CardOrder> {
  @override
  void initState() {
    super.initState();
  }

  var navModel = locator<NavigationViewModel>();
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    List prijzenMenu = [
      '€6,26',
      '€7,49',
      '€8,53',
      '€9,56',
      '€10,36',
      '€7,49',
      '€11,16'
    ];
    List prijzen = [
      '€2,00',
      '€3,90',
      '€4,10',
      '€3,50',
      '€2,70',
      '€2,50',
      '€1,90',
    ];
    int randomNumber = random.nextInt(7);

    return SizedBox(
      height: 350,
      width: 250,
      child: MouseWidget(
        onTap: widget.onEnter,
        child: Card(
            elevation: 1,
            child: widget.isMenu
                ? Container(
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColorLight, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              widget.item1.contains('menu')
                                  ? widget.item1
                                  : widget.item1 + ' menu',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black),
                            ),
                            Text(
                              widget.item2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              widget.item3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              widget.item4,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              widget.item5,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          prijzenMenu[randomNumber],
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
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
                                widget.text ?? 'Verwijderen',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    .copyWith(
                                        color: Theme.of(context)
                                            .primaryColorLight),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColorLight, width: 2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              widget.item1,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Open Sans',
                                  color: Colors.black),
                            ),
                          ],
                        ),
                        Text(
                          prijzen[randomNumber],
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
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
                                widget.text ?? 'Verwijderen',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    .copyWith(
                                        color: Theme.of(context)
                                            .primaryColorLight),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
      ),
    );
  }
}
