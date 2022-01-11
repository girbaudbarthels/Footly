import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/mcmenu/sauzen.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class DrankView extends StatelessWidget {
  const DrankView(
      {Key key, @required this.menu, @required this.size, @required this.side})
      : super(key: key);

  final String menu;
  final String size;
  final String side;
  @override
  Widget build(BuildContext context) {
    ScrollController jeng = ScrollController();

    return Scaffold(
      body: Container(
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
                    'Koude Dranken',
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
                        text: "Coca-Cola",
                        icon: "assets/koudedranken/cola.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Coca-Cola",
                          ));
                        }),
                    CardContent(
                        text: "Coca-Cola Light",
                        icon: "assets/koudedranken/colalight.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Coca-Cola Light",
                          ));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Coca-Cola Zero",
                        icon: "assets/koudedranken/colazero.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Coca-Cola Zero",
                          ));
                        }),
                    CardContent(
                        text: "Fanta",
                        icon: "assets/koudedranken/fanta.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Fanta",
                          ));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Sprite",
                        icon: "assets/koudedranken/sprite.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Sprite",
                          ));
                        }),
                    CardContent(
                        text: "Ice Tea",
                        icon: "assets/koudedranken/icetea.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Lipton Ice Tea",
                          ));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Vittel",
                        icon: "assets/koudedranken/vittel.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Vittel",
                          ));
                        }),
                    CardContent(
                        text: 'Perrier',
                        icon: "assets/rundsvlees/perrier.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Perrier",
                          ));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Koffie",
                        icon: "assets/warmedranken/koffie.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Koffie",
                          ));
                        }),
                    CardContent(
                        text: "Espresso",
                        icon: "assets/warmedranken/espresso.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Espresso",
                          ));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Bosvruchten Thee",
                        icon: "assets/warmedranken/bosvruchten.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Bosvruchten Thee",
                          ));
                        }),
                    CardContent(
                        text: "Cappucino",
                        icon: "assets/warmedranken/cappucino.png",
                        onEnter: () {
                          Get.to(SausMenuView(
                            menu: menu,
                            size: size,
                            side: side,
                            drank: "Cappucino",
                          ));
                        }),
                  ],
                ),
                SizedBox(
                  height: 200,
                )
              ],
            ),
            BottomNavBar(jeng: jeng)
          ],
        ),
      ),
    );
  }
}
