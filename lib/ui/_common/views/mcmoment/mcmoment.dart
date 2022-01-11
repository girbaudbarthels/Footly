import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class McmomentView extends StatelessWidget {
  const McmomentView({Key key}) : super(key: key);
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
                    'McMoment',
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
                        text: "Chicken Wrap",
                        icon: "assets/mcmoment/chickenwrap.png",
                        onEnter: () {
                          navModel.addToOrder('Chicken Wrap');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Filet O Fish',
                        icon: "assets/mcmoment/filetofish.png",
                        onEnter: () {
                          navModel.addToOrder('Filet O Fish');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Cheeseburger",
                        icon: "assets/mcmoment/cheeseburger.png",
                        onEnter: () {
                          navModel.addToOrder('Cheeseburger');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "McNuggets",
                        icon: "assets/mcmoment/mcnuggets.png",
                        onEnter: () {
                          navModel.addToOrder('McNuggets');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Cheese Samourai",
                        icon: "assets/mcmoment/cheesesamourai.png",
                        onEnter: () {
                          navModel.addToOrder('Cheese Samourai');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: "Hamburger",
                        icon: "assets/mcmoment/hamburger.png",
                        onEnter: () {
                          navModel.addToOrder('Hamburger');
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
