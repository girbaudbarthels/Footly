import 'package:flutter/material.dart';

// primary red:        Color(0xffea2f17)
// primary red  light: Color(0xffff6844)
// primary red  dark:  Color(0xffaf0000)
// white:              Colors.white
// light grey:         Color(0xffeeeeee)
// dark grey:          Colors.grey[600]
// black:              Color(0xff000000)

var primary = Color(0xffFFC72C);
Color secondary = const Color(0xff27742d);
Color dark = const Color(0xff27251F);

ThemeData lightTheme = ThemeData.light().copyWith(
  /// primary colors
  primaryColor: primary,
  primaryColorLight: secondary,
  primaryColorDark: dark,
  focusColor: Colors.grey,
  cardColor: Colors.white,

  ///Onboarding Text
  scaffoldBackgroundColor: Colors.grey[100],
  buttonColor: Colors.blue,

  /// appbar theming
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    elevation: 0.5,
    centerTitle: true,
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0xff000000),
        fontSize: 25.0,
        fontWeight: FontWeight.w700,
      ),
    ),
    actionsIconTheme: IconThemeData(
      color: Color(0xffFFC72C),
    ),
    iconTheme: IconThemeData(color: Colors.black),
  ),

  /// Textbuttons like "Save"
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith(
        (states) {
          return const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
          );
        },
      ),
    ),
  ),

  /// floating action button theming
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Color(0xffFFC72C),
  ),

  //IconTHeme
  iconTheme: const IconThemeData(color: Colors.grey),

  // material chips
  chipTheme: ChipThemeData(
    // enabled
    selectedColor: primary,
    secondarySelectedColor: secondary,
    secondaryLabelStyle: const TextStyle(color: Colors.white),
    // disabled
    backgroundColor: Colors.grey[300],
    labelStyle: const TextStyle(color: Colors.black),

    brightness: Brightness.light,
    disabledColor: const Color(0xffeeeeee),
    shape: const StadiumBorder(),
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
  ),

// Texts used without widgets
  textTheme: const TextTheme(
    headline1: TextStyle(
      ////// BIG TEXT START
      fontSize: 50,
      fontWeight: FontWeight.bold,
      color: const Color(0xff27251F),
    ),
    headline2: TextStyle(
      ////// AppBar
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: const Color(0xff27251F),
    ),
    headline3: TextStyle(
      ////// SubHeader
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: const Color(0xff27251F),
    ),
    headline4: TextStyle(
      ////// CardTitles
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: const Color(0xff27251F),
    ),
    bodyText1: TextStyle(
      ////// UnreadSubtext
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: const Color(0xff27251F),
    ),
    bodyText2: TextStyle(
      ////// Subtexts
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: Colors.grey,
    ),
  ),

  cardTheme: CardTheme(
    elevation: 0.5,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  ),

//////// BUTTTONS///////
  //OutlinedButtonTheme
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 15),
      ),
      foregroundColor: MaterialStateColor.resolveWith(
        (states) => primary,
      ),
      textStyle: MaterialStateProperty.all(
        const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  ),
  buttonTheme: ButtonThemeData(
    padding: const EdgeInsets.symmetric(vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  ),
);
