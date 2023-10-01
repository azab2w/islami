import 'package:flutter/material.dart';
import 'package:islami_task/hadeth/hadethTab.dart';
import 'package:islami_task/quran/QuranTab.dart';
import 'package:islami_task/radio/radioTab.dart';
import 'package:islami_task/settingtab.dart';
import 'package:islami_task/tasbeh/tasbehTab.dart';

class Home_Screen extends StatefulWidget {
  static const String routeName = 'Home_Screen';
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/main_background.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontStyle: FontStyle.normal)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTabIndex,
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/quran-quran-svgrepo-com.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Color(0xFFB7935F),
                icon: Icon(Icons.settings),
                label: 'Settings'),
          ],
        ),
        body: tabs[selectedTabIndex],
      ),
    );
  }

  List<Widget> tabs = [
    RadioTab(),
    TasbehTab(),
    HadethTab(),
    QuranTab(),
    settingsTab(),
  ];
}
