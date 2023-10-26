import 'package:flutter/material.dart';

class myThemeData {
  static Color LightPrimary =  Color(0xFFB7935F) ;

  static const Color darkPrimary =  Color(0xFF141A2E) ;

  static const Color darkSecondary = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
      cardTheme: CardTheme(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        elevation: 18,
      ),
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFFB7935F),
        primary: const Color(0xFFB7935F),
        secondary: const Color(0xFFB7935F),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData()),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ));

  static ThemeData darktTheme = ThemeData (
      cardTheme: CardTheme(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        elevation: 18,
      ),
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimary,
        primary: darkPrimary,
        secondary: darkPrimary,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor:  darkPrimary,
          selectedItemColor: darkSecondary,
          unselectedItemColor: Colors.white ,
          selectedIconTheme: IconThemeData(size: 32)),
      appBarTheme:  AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white , fontSize: 28),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ));

}