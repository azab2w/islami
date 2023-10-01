import 'package:flutter/material.dart';

class settingsTab extends StatefulWidget {
  const settingsTab({super.key});

  @override
  State<settingsTab> createState() => _settingsTabState();
}

class _settingsTabState extends State<settingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 64, horizontal: 18),
      child: Column(
        children: [
          Container(alignment: Alignment.topLeft, child: Text("Theme")),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1)),
                child: Text(
                  "Light",
                  style: TextStyle(fontSize: 18),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Container(alignment: Alignment.topLeft, child: Text("Language")),
          InkWell(
            onTap: () {
              showLangBottomSheet();
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Theme.of(context).primaryColor, width: 1)),
                child: Text(
                  "English",
                  style: TextStyle(fontSize: 18),
                )),
          ),
        ],
      ),
    );
  }

  void showLangBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return languagebottomsheet();
        });
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return themeBottomSheet();
      },
    );
  }
}

class themeBottomSheet extends StatefulWidget {
  @override
  State<themeBottomSheet> createState() => _themeBottomSheetState();
}

class _themeBottomSheetState extends State<themeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelecteditem('light'),
          getunselecteditem('dark')

        ],
      ),
    );
  }

  Widget getSelecteditem(String text){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
            fontSize: 24
          ),),
        Icon(Icons.check , color: Theme.of(context).primaryColor, size: 15,)
      ],
    );

  }
  Widget getunselecteditem(String text){
    return Text(text,
    style: TextStyle(fontSize: 24),
    );
  }
}

class languagebottomsheet extends StatefulWidget {
  @override
  State<languagebottomsheet> createState() => _languagebottomsheetState();
}

class _languagebottomsheetState extends State<languagebottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelecteditem('English'),
          getunselecteditem('عربي')

        ],
      ),
    );
  }
  Widget getSelecteditem(String text){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 24
          ),),
        Icon(Icons.check , color: Theme.of(context).primaryColor, size: 15,)
      ],
    );

  }
  Widget getunselecteditem(String text){
    return Text(text,
      style: TextStyle(fontSize: 24),
    );
  }
}
