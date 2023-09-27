import 'package:flutter/material.dart';
import 'package:islami_task/chapterDetails/ChapterdetailsScreen.dart';

class VerseWidget extends StatelessWidget {
  String content;
  int index;
  VerseWidget(this.content , this.index);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(" "),
        Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text('$content(${index+1})',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontFamily: "assets/font/Monotype Koufi Bold.ttf",
              ),
            )),
      ],
    );
  }
}
