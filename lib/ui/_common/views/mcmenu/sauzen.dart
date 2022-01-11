import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class SausMenuView extends StatelessWidget {
  const SausMenuView(
      {Key key,
      @required this.menu,
      @required this.size,
      @required this.side,
      @required this.drank})
      : super(key: key);

  final String menu;
  final String size;
  final String side;
  final String drank;
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
                    'Sauzen',
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
                        text: "Chili Mayo",
                        icon: "assets/sauzen/chili-mayo.jpg",
                        onEnter: () {
                          List<String> jeng = [
                            menu,
                            size,
                            side,
                            drank,
                            'Chili Mayo'
                          ];
                          navModel.addMenuOrder(jeng);
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "Ketchup",
                        icon: "assets/sauzen/ketchup.png",
                        onEnter: () {
                          List<String> jeng = [
                            menu,
                            size,
                            side,
                            drank,
                            'Ketchup'
                          ];
                          navModel.addMenuOrder(jeng);
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Mayonaise",
                        icon: "assets/sauzen/mayonaise.png",
                        onEnter: () {
                          List<String> jeng = [
                            menu,
                            size,
                            side,
                            drank,
                            'Mayonaise'
                          ];
                          navModel.addMenuOrder(jeng);
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "Frietsaus",
                        icon: "assets/sauzen/frietsaus.png",
                        onEnter: () {
                          List<String> jeng = [
                            menu,
                            size,
                            side,
                            drank,
                            'Frietsaus'
                          ];
                          navModel.addMenuOrder(jeng);
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Kerriesaus",
                        icon: "assets/sauzen/kerriesaus.png",
                        onEnter: () {
                          List<String> jeng = [
                            menu,
                            size,
                            side,
                            drank,
                            'Kerriesaus'
                          ];
                          navModel.addMenuOrder(jeng);
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "BBQ Saus",
                        icon: "assets/sauzen/bbqsaus.png",
                        onEnter: () {
                          List<String> jeng = [
                            menu,
                            size,
                            side,
                            drank,
                            'BBQ Saus'
                          ];
                          navModel.addMenuOrder(jeng);
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Zoetzure saus",
                        icon: "assets/sauzen/zoetzure.png",
                        onEnter: () {
                          List<String> jeng = [
                            menu,
                            size,
                            side,
                            drank,
                            'Zoetzure saus'
                          ];
                          navModel.addMenuOrder(jeng);
                          Get.to(CategoriesView());
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
