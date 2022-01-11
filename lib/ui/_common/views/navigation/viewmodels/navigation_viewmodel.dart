import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NavigationViewModel with ChangeNotifier {
  PageController controller = PageController();
  bool entered = false;
  bool here = false;

  void addToOrder(item) async {
    //order.add(item);
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String> order = prefs.getStringList('orderList') ?? [];

    order.add(item);

    prefs.setStringList('orderList', order);

    notifyListeners();
  }

  void addMenuOrder(List<String> menuOrder) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> order = prefs.getStringList('orderList') ?? [];
    order.add(menuOrder.toString());

    prefs.setStringList('orderList', order);
  }

  void removeMenuOrder(List<String> menuOrder) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> order = prefs.getStringList('orderList') ?? [];
    order = menuOrder;

    prefs.setStringList('orderList', order);
  }

  void hereOrHome(e) {
    here = e;
    notifyListeners();
  }
}
