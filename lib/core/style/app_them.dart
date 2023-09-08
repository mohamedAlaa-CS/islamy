import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      fontFamily: 'Amiri',
      primaryColor: const Color(0xFFB7935F),
      canvasColor: const Color(0xFFB7935F),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFB7935F),
        selectedIconTheme: IconThemeData(
          color: Colors.black,
          size: 28,
        ),
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedIconTheme: IconThemeData(
          color: Colors.white,
          size: 26,
        ),
      ),
      textTheme: const TextTheme(
          titleLarge: TextStyle(
              fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
              fontSize: 26, color: Colors.black, fontWeight: FontWeight.bold),
          bodyMedium: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
          bodySmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          titleSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)));
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'Amiri',
    primaryColor: const Color(0xFF141A2E),
    canvasColor: const Color(0xffFACC1D),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF141A2E),
      selectedIconTheme: IconThemeData(
        color: Color(0xffFACC1D),
        size: 28,
      ),
      selectedItemColor: Color(0xffFACC1D),
      selectedLabelStyle: TextStyle(
        fontSize: 20,
        color: Color(0xffFACC1D),
        fontWeight: FontWeight.w500,
      ),
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 26,
      ),
    ),
    textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
            fontSize: 26,
            color: Color(0xffFACC1D),
            fontWeight: FontWeight.bold),
        bodyMedium: TextStyle(fontSize: 20, color: Color(0xffFACC1D)),
        bodySmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        // this text used in tasbh...!
        titleSmall: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),
  );
}
