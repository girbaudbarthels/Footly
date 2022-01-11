import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class FrietenView extends StatelessWidget {
  const FrietenView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var navModel = locator<NavigationViewModel>();
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
                    'Frieten',
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
                        text: "Cheese & Bacon",
                        icon: "assets/frieten/cheesebacon.png",
                        onEnter: () {
                          navModel.addToOrder("Cheese & Bacon");
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Kleine frieten',
                        icon: "assets/frieten/klein.jpg",
                        onEnter: () {
                          navModel.addToOrder('Kleine friet');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Medium frieten",
                        icon: "assets/frieten/medium.jpg",
                        onEnter: () {
                          navModel.addToOrder('Medium friet');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Grote frieten',
                        icon: "assets/frieten/groot.jpg",
                        onEnter: () {
                          navModel.addToOrder('Grote friet');
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
