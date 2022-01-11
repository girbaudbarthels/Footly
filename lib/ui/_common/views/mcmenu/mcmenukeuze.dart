import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/mcmenu/size.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class McmenuView extends StatelessWidget {
  const McmenuView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScrollController jeng = ScrollController();

    return Scaffold(
      body: Container(
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
                    'Kies een hoofdgerecht',
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
                        text: "BigMac",
                        icon: "assets/mcmenu/bigmac.png",
                        onEnter: () {
                          Get.to(SizeView(
                            menu: 'BigMac',
                          ));
                        }),
                    CardContent(
                        text: 'Generous Jack',
                        icon: "assets/mcmenu/generousjack.png",
                        onEnter: () {
                          Get.to(SizeView(
                            menu: 'Generous Jack',
                          ));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Veggie Deluxe",
                        icon: "assets/mcmenu/veggiedeluxe.png",
                        onEnter: () {
                          Get.to(SizeView(
                            menu: 'Veggie Deluxe',
                          ));
                        }),
                    CardContent(
                        text: 'Royal Crispy Bacon',
                        icon: "assets/mcmenu/royalcrispybacon.png",
                        onEnter: () {
                          Get.to(SizeView(
                            menu: 'Royal Crispy Bacon',
                          ));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Royal Cheese",
                        icon: "assets/mcmenu/royalcheese.png",
                        onEnter: () {
                          Get.to(SizeView(
                            menu: 'Royal Cheese Menu',
                          ));
                        }),
                    CardContent(
                        text: 'Double Cheese',
                        icon: "assets/mcmenu/doublecheese.png",
                        onEnter: () {
                          Get.to(SizeView(
                            menu: 'Double Cheese Menu',
                          ));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "McChicken",
                        icon: "assets/mcmenu/McChicken.png",
                        onEnter: () {
                          Get.to(SizeView(
                            menu: 'McChicken',
                          ));
                        }),
                    CardContent(
                        text: 'Chicken Nuggets',
                        icon: "assets/mcmenu/mcnuggetsmenu.png",
                        onEnter: () {
                          Get.to(SizeView(
                            menu: 'McNuggets',
                          ));
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Royal O Fish",
                        icon: "assets/mcmenu/royalfish.png",
                        onEnter: () {
                          Get.to(SizeView(
                            menu: 'Royal O Fish Menu',
                          ));
                        }),
                    CardContent(
                        text: 'McVeggie',
                        icon: "assets/mcmenu/veggiedeluxe.png",
                        onEnter: () {
                          Get.to(SizeView(
                            menu: 'McVeggie Menu',
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
