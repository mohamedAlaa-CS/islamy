import 'package:flutter/material.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Amiri',
    primaryColor: const Color(0xFFB7935F),
     appBarTheme:const AppBarTheme(
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    elevation: 0.0,
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.bold
    ), 
  ),
  bottomNavigationBarTheme:const BottomNavigationBarThemeData(
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


  )
  );
}