import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constrants.dart';

ThemeData themeData() {
  return ThemeData(
    scaffoldBackgroundColor: KBackgroundColour,
    primaryColor: KprimaryColour,
    //textTheme: Theme.of(context).textTheme.apply(bodyColor: KTextColour),
    textTheme: textTheme(),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: KprimaryColour,
          fontSize: 18,
        ),
      ),
    ),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: KprimaryColour),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: KTextColour),
  );
}
