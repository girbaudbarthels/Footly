import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/ui/_common/views/categories/categories.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/navigation_viewmodel.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';

class KipView extends StatelessWidget {
  const KipView({Key key}) : super(key: key);
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
                    'Kip',
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
                        text: "CBO",
                        icon: "assets/kip/cbo.png",
                        onEnter: () {
                          navModel.addToOrder('CBO');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'McChicken',
                        icon: "assets/kip/mcchicken.png",
                        onEnter: () {
                          navModel.addToOrder('McChicken');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "Chicken Wrap",
                        icon: "assets/kip/chickenwrap.png",
                        onEnter: () {
                          navModel.addToOrder('Chicken Wrap');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Tenders',
                        icon: "assets/kip/tenders.jpg",
                        onEnter: () {
                          navModel.addToOrder('Tenders');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "McNuggets",
                        icon: "assets/kip/mcnuggets.png",
                        onEnter: () {
                          navModel.addToOrder('McNuggets');
                          Get.to(CategoriesView());
                        }),
                    CardContent(
                        text: 'Wings',
                        icon: "assets/kip/wings.png",
                        onEnter: () {
                          navModel.addToOrder('Chicken Wings');
                          Get.to(CategoriesView());
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardContent(
                        text: "SharingBox",
                        icon: "assets/kip/sharingbox.png",
                        onEnter: () {
                          navModel.addToOrder('SharingBox');
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
