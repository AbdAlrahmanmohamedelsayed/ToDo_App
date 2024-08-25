import 'package:flutter/material.dart';

class ApplecationThemeManager {
  static const Color primaryColor = Color(0xff5D9CEC);
  static ThemeData lightThemeManager = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xffDFECDB),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(size: 35, color: primaryColor),
      unselectedIconTheme: IconThemeData(size: 25, color: Color(0xffC8C9CB)),
    ),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins'),
        centerTitle: true),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins'),
      bodyMedium: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins'),
      bodySmall: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w400,
          fontFamily: 'Poppins'),
    ),
  );
}
