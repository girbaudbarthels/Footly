import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class RundsvleesView extends StatelessWidget {
  const RundsvleesView({Key key}) : super(key: key);
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
                    'Rundsvlees',
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
                        icon: "assets/rundsvlees/bigmac.png",
                        onEnter: () {
                          navModel.addToOrder('BigMac');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Generous Jack',
                        icon: "assets/rundsvlees/generousjack.png",
                        onEnter: () {
                          navModel.addToOrder('Generous Jack');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Hamburger",
                        icon: "assets/rundsvlees/hamburger.png",
                        onEnter: () {
                          navModel.addToOrder('Hamburger');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Royal Crispy Bacon',
                        icon: "assets/rundsvlees/royalcrispybacon.png",
                        onEnter: () {
                          navModel.addToOrder('Royal Crispy Bacon');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Royal Cheese",
                        icon: "assets/rundsvlees/royalcheese.png",
                        onEnter: () {
                          navModel.addToOrder('Royal Cheese');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Double Cheese',
                        icon: "assets/rundsvlees/doublecheese.png",
                        onEnter: () {
                          navModel.addToOrder('Double Cheese');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Cheeseburger",
                        icon: "assets/rundsvlees/cheeseburger.png",
                        onEnter: () {
                          navModel.addToOrder('Cheeseburger');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Cheese Samourai',
                        icon: "assets/rundsvlees/cheeseburger.png",
                        onEnter: () {
                          navModel.addToOrder('Cheese Samourai');
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
