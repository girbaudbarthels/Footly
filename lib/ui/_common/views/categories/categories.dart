import 'dart:async';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masterproject/helpers/file_utils.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/main.dart';
import 'package:masterproject/ui/_common/views/desserten/desserten.dart';
import 'package:masterproject/ui/_common/views/fieten/frieten.dart';
import 'package:masterproject/ui/_common/views/happymeal/happymeal.dart';
import 'package:masterproject/ui/_common/views/kip/kip.dart';
import 'package:masterproject/ui/_common/views/koudedranken/koudedranken.dart';
import 'package:masterproject/ui/_common/views/mcmenu/mcmenukeuze.dart';
import 'package:masterproject/ui/_common/views/mcmoment/mcmoment.dart';
import 'package:masterproject/ui/_common/views/mouse/mouse.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';
import 'package:masterproject/ui/_common/views/order/order.dart';
import 'package:masterproject/ui/_common/views/rundsvlees/rundsvlees.dart';
import 'package:masterproject/ui/_common/views/salade/salade.dart';
import 'package:masterproject/ui/_common/views/sauzen/sauzen.dart';
import 'package:masterproject/ui/_common/views/veggie/veggie.dart';
import 'package:masterproject/ui/_common/views/vis/vis.dart';
import 'package:masterproject/ui/_common/views/warmedranken/warmedranken.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key key}) : super(key: key);

  @override
  _CategoriesViewState createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  List lijstItems = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getList();
  }

  void getList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    lijstItems = prefs.getStringList("orderList");
  }

  Offset offset = Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    var navModel = locator<NavigationViewModel>();
    ScrollController jeng = ScrollController();

    return Scaffold(
      body: MouseRegion(
        onHover: (p) {
          setState(() {
            offset = p.position;
          });
        },
        child: Stack(
          children: [
            Container(
              //color: Theme.of(context).primaryColorLight,
              child: Stack(
                children: [
                  ListView(
                    controller: jeng,
                    children: [
                      /* */
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text(
                          'Ons menu',
                          textAlign: TextAlign.left,
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              .copyWith(color: Colors.black, fontSize: 40),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardContent(
                              text: "Menu's",
                              icon: "assets/menus.png",
                              onEnter: () {
                                //navModel.addToOrder("menus");
                                //print(navModel.order);
                                Get.to(McmenuView());
                              }),
                          CardContent(
                              text: 'Rundsvlees',
                              icon: "assets/rundsvlees.png",
                              onEnter: () {
                                // navModel.addToOrder(item)
                                Get.to(RundsvleesView());
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardContent(
                              text: "Kip",
                              icon: "assets/kip.png",
                              onEnter: () {
                                Get.to(KipView());
                              }),
                          CardContent(
                              text: 'Vis',
                              icon: "assets/vis.png",
                              onEnter: () {
                                // navModel.addToOrder(item)
                                Get.to(VisView());
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardContent(
                              text: "McMoment",
                              icon: "assets/mcmoment.jpg",
                              onEnter: () {
                                //navModel.addToOrder(item)
                                Get.to(McmomentView());
                              }),
                          CardContent(
                              text: 'Veggie',
                              icon: "assets/veggie.jpg",
                              onEnter: () {
                                // navModel.addToOrder(item)
                                Get.to(VeggieView());
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardContent(
                              text: "Happy Meal",
                              icon: "assets/happymeal.jpg",
                              onEnter: () {
                                //navModel.addToOrder(item)
                                Get.to(HappyView());
                              }),
                          CardContent(
                              text: "Frieten",
                              icon: "assets/frieten.jpg",
                              onEnter: () {
                                //navModel.addToOrder(item)
                                Get.to(FrietenView());
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardContent(
                              text: 'Desserten',
                              icon: "assets/desserten.png",
                              onEnter: () {
                                // navModel.addToOrder(item)
                                Get.to(DessertView());
                              }),
                          CardContent(
                              text: "Salade",
                              icon: "assets/salades.png",
                              onEnter: () {
                                //navModel.addToOrder(item)
                                Get.to(SaladeView());
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardContent(
                              text: 'Koude Dranken',
                              icon: "assets/koudedranken.jpg",
                              onEnter: () {
                                // navModel.addToOrder(item)
                                Get.to(KoudedrankenView());
                              }),
                          CardContent(
                              text: "Warme Dranken",
                              icon: "assets/warmedranken.jpg",
                              onEnter: () {
                                //navModel.addToOrder(item)
                                Get.to(WarmeDrankenView());
                              }),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardContent(
                              text: 'Sauzen',
                              icon: "assets/Sauzen.jpg",
                              onEnter: () {
                                // navModel.addToOrder(item)
                                Get.to(SauzenView());
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                      )
                    ],
                  ),
                  BottomNavBar(
                    jeng: jeng,
                    isHome: true,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key key,
    @required this.jeng,
    this.orderScreen,
    this.lijstItems,
    this.isHome,
  }) : super(key: key);

  final ScrollController jeng;
  final List lijstItems;
  final bool orderScreen;
  final bool isHome;
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  Timer t;
  var navModel = locator<NavigationViewModel>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                margin: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  //color: Theme.of(context).primaryColorLight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        widget.isHome != null && widget.isHome
                            ? Container(
                                width: 150,
                                height: 100,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
                                  child: Image.asset('assets/logotrans.png'),
                                ),
                              )
                            : Stack(
                                children: [
                                  Positioned(
                                    top: 20,
                                    child: FaIcon(
                                      FontAwesomeIcons.backward,
                                      color: Colors.black54,
                                      size: 60,
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 150,
                                    child: MouseWidget(
                                      child: SizedBox(height: 100, width: 150),
                                      onTap: () async {
                                        SharedPreferences prefs =
                                            await SharedPreferences
                                                .getInstance();
                                        List list =
                                            prefs.getStringList("orderList");
                                        Get.back();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.none,
                              onEnter: (e) {
                                print(e);

                                t = Timer.periodic(Duration(milliseconds: 100),
                                    (timer) {
                                  widget.jeng.animateTo(
                                      widget.jeng.position.pixels - 50,
                                      duration: Duration(milliseconds: 150),
                                      curve: Curves.easeInOut);
                                });
                              },
                              onExit: (e) {
                                t.cancel();
                              },
                              child: FaIcon(
                                FontAwesomeIcons.arrowAltCircleUp,
                                color: Colors.black,
                                size: 60,
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            MouseRegion(
                              cursor: SystemMouseCursors.none,
                              onEnter: (e) {
                                t = Timer.periodic(Duration(milliseconds: 100),
                                    (timer) {
                                  widget.jeng.animateTo(
                                      widget.jeng.position.pixels + 50,
                                      duration: Duration(milliseconds: 150),
                                      curve: Curves.easeInOut);
                                });
                              },
                              onExit: (e) {
                                t.cancel();
                              },
                              child: FaIcon(
                                FontAwesomeIcons.arrowAltCircleDown,
                                color: Colors.black,
                                size: 60,
                              ),
                            ),
                          ],
                        ),
                        widget.orderScreen == null || !widget.orderScreen
                            ? Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    top: 20,
                                    child: FaIcon(
                                      FontAwesomeIcons.shoppingBasket,
                                      size: 60,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 15,
                                    child: FutureBuilder(
                                      future: Helper.getList(),
                                      builder: (context, snapshot) => Badge(
                                        badgeContent: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            snapshot.data.length.toString(),
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    width: 150,
                                    child: MouseWidget(
                                      child: SizedBox(
                                        height: 100,
                                        width: 150,
                                      ),
                                      onTap: () async {
                                        SharedPreferences prefs =
                                            await SharedPreferences
                                                .getInstance();
                                        List list =
                                            prefs.getStringList("orderList");
                                        Get.to(OrderView(
                                          order: list,
                                        ));
                                      },
                                    ),
                                  ),
                                ],
                              )
                            : Container(
                                height: 100,
                                width: 150,
                                child: MouseWidget(
                                  pay: true,
                                  child: Positioned(
                                    top: 18,
                                    right: 0,
                                    child: Icon(
                                      Icons.euro,
                                      size: 70,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  onTap: () async {
                                    Get.to(Navigation());
                                    List<String> empty = [];
                                    navModel.removeMenuOrder(empty);
                                  },
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
