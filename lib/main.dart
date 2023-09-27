import 'package:flutter/material.dart';
import 'package:islami_task/Home_Screen.dart';
import 'package:islami_task/chapterDetails/ChapterdetailsScreen.dart';
import 'hadeth/hadethTab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
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
          )),
      routes: {
        "Home": (BuildContext) => Home_Screen(),
        "DetailsScreen": (BuildContext) => ChapterDetailsScreen(),
        "hadethDetails": (BuildContext) => hadethDetailsScreen(),
      },
      initialRoute: "Home",
    );
  }
}
