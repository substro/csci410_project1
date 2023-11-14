import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData? currentTheme;
  //this is the light theme background
  Color black = HexColor("000000");
  Color white = HexColor("FFFFFF");
  Color lightPrimaryColor = HexColor("F5F5F5");
  // this is the dark theme background
  Color darkPrimaryColor = HexColor("030320");
  Color lightSecondaryColor = HexColor("FFFFFF");
  Color darkSecondaryColor = HexColor("1A2148");
  Color accentColor = HexColor("575DE3");

  ThemeProvider() {
    // Initialize currentTheme based on system theme
    final Brightness systemBrightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    if (systemBrightness == Brightness.light) {
      setLightMode();
    } else {
      setDarkMode();
    }
  }

  void setLightMode() {
    currentTheme = ThemeData(
        primaryColor: lightPrimaryColor,
        scaffoldBackgroundColor: lightPrimaryColor,
        colorScheme: const ColorScheme.light()
            .copyWith(
              primary: lightPrimaryColor,
              secondary: lightSecondaryColor,
            )
            .copyWith(secondary: accentColor),
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: black),
            toolbarHeight: 80.0,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            titleTextStyle: TextStyle(
                fontFamily: 'Electrolize', fontSize: 35.0, color: black)),
        brightness: Brightness.light);
    notifyListeners();
  }

  void setDarkMode() {
    currentTheme = ThemeData(
        primaryColor: darkPrimaryColor,
        scaffoldBackgroundColor: darkPrimaryColor,
        colorScheme: const ColorScheme.dark()
            .copyWith(
              primary: darkPrimaryColor,
              secondary: darkSecondaryColor,
            )
            .copyWith(secondary: accentColor),
        buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
        inputDecorationTheme: InputDecorationTheme(fillColor: white),
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: white),
            toolbarHeight: 80.0,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            titleTextStyle: TextStyle(
                fontFamily: 'Electrolize', fontSize: 35.0, color: white)),
        brightness: Brightness.dark);
    notifyListeners();
  }
}

ThemeProvider _themeProvider = ThemeProvider();
