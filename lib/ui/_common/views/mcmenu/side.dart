import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/mcmenu/drank.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class SideView extends StatelessWidget {
  const SideView({Key key, @required this.menu, @required this.size})
      : super(key: key);
  final String menu;
  final String size;
  @override
  Widget build(BuildContext context) {
    var navModel = locator<NavigationViewModel>();
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
                    'Kies een bijgerecht',
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
                        text: "Friet",
                        icon: "assets/mcmenu/side/frieten.jpg",
                        onEnter: () {
                          Get.to(DrankView(
                            menu: menu,
                            size: size,
                            side: "Frieten",
                          ));
                        }),
                    CardContent(
                        text: 'Nuggets',
                        icon: "assets/mcmenu/side/nuggets.png",
                        onEnter: () {
                          Get.to(DrankView(
                            menu: menu,
                            size: size,
                            side: "Nuggets",
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
