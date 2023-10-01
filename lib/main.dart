import 'package:flutter/material.dart';
import 'package:islami_task/Home_Screen.dart';
import 'package:islami_task/chapterDetails/ChapterdetailsScreen.dart';
import 'package:islami_task/ui/myThemeData.dart';
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
      theme: myThemeData.darktTheme,
      darkTheme: myThemeData.darktTheme,
      routes: {
        "Home": (BuildContext) => Home_Screen(),
        "DetailsScreen": (BuildContext) => ChapterDetailsScreen(),
        "hadethDetails": (BuildContext) => hadethDetailsScreen(),
      },
      initialRoute: "Home",
    );
  }
}
