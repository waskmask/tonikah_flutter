import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class ThemeHelper {

  static ThemeData lightTheme() {
    return ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kAppColor,brightness: Brightness.light),
        useMaterial3: true,
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: kAppColor),
        appBarTheme:const AppBarTheme(
          centerTitle: false,
          backgroundColor: kAppBarColor,
          foregroundColor: Colors.white,
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        primarySwatch: MaterialColor(0xFF0071BD, kColorsMap),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: kScaffoldColor,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: GoogleFonts.inter(
            fontSize: 11.0,
            fontWeight: FontWeight.w500,
            color: kSubTextColor,
          ),
          selectedIconTheme: IconThemeData(color: kSubTextColor),
          unselectedIconTheme: IconThemeData(color: kSubTextColor),
          unselectedLabelStyle: GoogleFonts.inter(
            fontSize: 11.0,
            fontWeight: FontWeight.w500,
            color: kSubTextColor,
          ),
        ),
        brightness: Brightness.light,
        primaryColor: kAppColor,
        dividerColor: Colors.grey,
        primaryColorLight: kTextColor,
        hintColor: kSubTextColor,
        scaffoldBackgroundColor: kScaffoldColor,
        buttonTheme: const ButtonThemeData(buttonColor: kButtonColor));
  }

  static ThemeData darkTheme() {
    return ThemeData(
     // colorScheme: ColorScheme.fromSeed(seedColor: kAppColor),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAppColor,
          brightness: Brightness.dark),
      useMaterial3: true,
      progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
      appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: kDarkAppBarColor,
          foregroundColor: Colors.white,
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: kDarkScaffoldColor,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        selectedIconTheme: IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 11.0,
          fontWeight: FontWeight.w500,
          color:Colors.white,
        ),
      ),
      primarySwatch: MaterialColor(0xFF0071BD, kColorsMap),
      brightness: Brightness.dark,
      primaryColor: kDarkAppColor,
      primaryColorLight: kDarkTextColor,
      dividerColor: Colors.blueGrey.shade900,
      scaffoldBackgroundColor: kDarkScaffoldColor,
      hintColor: kSubTextColor,
      buttonTheme: const ButtonThemeData(buttonColor: kDarkButtonColor),
    );
  }
}
