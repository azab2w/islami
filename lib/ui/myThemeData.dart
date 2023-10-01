import 'package:flutter/material.dart';

class myThemeData {
  static Color LightPrimary = Color(0xFFB7935F);

  static const Color darkPrimary = Color(0xFF141A2E);
   
   static const Color darksecondary = Color(0xFFFACC1D);
  
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
        seedColor: darkPrimary,
        primary: darkPrimary,
        secondary: darkPrimary,
        onPrimary: darkPrimary,
        onSecondary: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor:  darksecondary,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData()),
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ));

  static ThemeData darktTheme = ThemeData(
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
        onSecondary: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData()),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 28),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ));
}
