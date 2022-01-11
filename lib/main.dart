import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:masterproject/locator.dart';
import 'package:masterproject/theme/theme.dart';
import 'package:masterproject/ui/_common/views/navigation/viewmodels/views/navigation_view.dart';
import 'package:oktoast/oktoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
  setupSize();
  setupLocator();
}

void setupSize() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setStringList("orderList", []);
  await DesktopWindow.setWindowSize(Size(800, 600));
  await DesktopWindow.setMinWindowSize(Size(800, 600));
  await DesktopWindow.setMaxWindowSize(Size(800, 600));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Offset offset = Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (p) {
        setState(() {
          offset = p.position;
        });
      },
      cursor: SystemMouseCursors.none,
      child: OKToast(
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: lightTheme,
          home: Navigation(),
        ),
      ),
    );
  }
}
