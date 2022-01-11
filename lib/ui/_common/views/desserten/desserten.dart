import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class DessertView extends StatelessWidget {
  const DessertView({Key key}) : super(key: key);
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
                    'Desserten',
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
                        text: "Oreo Donut",
                        icon: "assets/desserten/oreodonut.jpg",
                        onEnter: () {
                          navModel.addToOrder('Oreo Donut');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Parfait',
                        icon: "assets/desserten/parfait.png",
                        onEnter: () {
                          navModel.addToOrder('Parfait');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: 'Sundae',
                        icon: "assets/desserten/sundae.png",
                        onEnter: () {
                          navModel.addToOrder('Sundae');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Milkshake',
                        icon: "assets/desserten/vanille.jpg",
                        onEnter: () {
                          navModel.addToOrder('Milkshake');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: 'Actimel',
                        icon: "assets/desserten/actimel.png",
                        onEnter: () {
                          navModel.addToOrder('Actimel');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Petit Lu',
                        icon: "assets/desserten/petitlu.png",
                        onEnter: () {
                          navModel.addToOrder('Petit Lu');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: 'McFlurry',
                        icon: "assets/desserten/mcflurry.png",
                        onEnter: () {
                          navModel.addToOrder('McFlurry Oreo');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Macaron',
                        icon: "assets/desserten/macarons.png",
                        onEnter: () {
                          navModel.addToOrder('Macarons');
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
