import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class HappyView extends StatelessWidget {
  const HappyView({Key key}) : super(key: key);
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
                    'Happy Meal',
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
                        text: "Hamburger",
                        icon: "assets/happymeal/hamburger.png",
                        onEnter: () {
                          navModel.addToOrder('Happy Meal Hamburger');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Cheese Burger',
                        icon: "assets/happymeal/cheeseburger.png",
                        onEnter: () {
                          navModel.addToOrder('Happy Meal Cheeseburger');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "McFish",
                        icon: "assets/happymeal/mcfish.png",
                        onEnter: () {
                          navModel.addToOrder('Happy Meal McFish');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'McNuggets',
                        icon: "assets/happymeal/mcnuggets.png",
                        onEnter: () {
                          navModel.addToOrder('Happy Meal McNuggets');
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
