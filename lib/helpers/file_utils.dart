import 'package:shared_preferences/shared_preferences.dart';

/// helper class to do file related transforms
class Helper {
  static Future<List> getList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList("orderList");
  }
}
