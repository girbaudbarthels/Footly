import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class KoudedrankenView extends StatelessWidget {
  const KoudedrankenView({Key key}) : super(key: key);
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
                          navModel.addToOrder('Coca-Cola');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "Coca-Cola Light",
                        icon: "assets/koudedranken/colalight.png",
                        onEnter: () {
                          navModel.addToOrder('Coca Cola Light');
                          Get.to(CategoriesView());
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
                          navModel.addToOrder('Coca Cola Zero');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "Fanta",
                        icon: "assets/koudedranken/fanta.png",
                        onEnter: () {
                          navModel.addToOrder('Fanta');
                          Get.to(CategoriesView());
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
                          navModel.addToOrder('Sprite');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "Ice Tea",
                        icon: "assets/koudedranken/icetea.png",
                        onEnter: () {
                          navModel.addToOrder('Lipton Ice Tea');
                          Get.to(CategoriesView());
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
                          navModel.addToOrder('Vittel');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Perrier',
                        icon: "assets/rundsvlees/perrier.png",
                        onEnter: () {
                          navModel.addToOrder('Perrier');
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
