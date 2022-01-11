import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class WarmeDrankenView extends StatelessWidget {
  const WarmeDrankenView({Key key}) : super(key: key);
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
                    'Warme Dranken',
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
                        text: "Koffie",
                        icon: "assets/warmedranken/koffie.png",
                        onEnter: () {
                          navModel.addToOrder('Koffie');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "Espresso",
                        icon: "assets/warmedranken/espresso.png",
                        onEnter: () {
                          navModel.addToOrder('Espresso');
                          Get.to(CategoriesView());
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
                          navModel.addToOrder('Bosvruchten Thee');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "Cappucino",
                        icon: "assets/warmedranken/cappucino.png",
                        onEnter: () {
                          navModel.addToOrder('Cappucino');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Groene Thee",
                        icon: "assets/warmedranken/groenethee.png",
                        onEnter: () {
                          navModel.addToOrder('Groene Thee');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "English Breakfast Thee",
                        icon: "assets/warmedranken/groenethee.png",
                        onEnter: () {
                          navModel.addToOrder("English Breakfast Thee");
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Warme Choco",
                        icon: "assets/warmedranken/choco.png",
                        onEnter: () {
                          navModel.addToOrder('Warme Choco');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "Latte",
                        icon: "assets/warmedranken/katte.png",
                        onEnter: () {
                          navModel.addToOrder('Latte');
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
