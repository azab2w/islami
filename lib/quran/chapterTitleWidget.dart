import 'package:flutter/material.dart';
import 'package:islami_task/chapterDetails/ChapterdetailsScreen.dart';

class chapterTitleWidget extends StatelessWidget {
  String title;
  int index;
  chapterTitleWidget(this.title , this.index);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
       Navigator.of(context).pushNamed("DetailsScreen" ,
           arguments: ChapterDetailsArgs(title, index));
      },
      child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text(
            "صورة ${title}",
            style: const TextStyle(
              fontSize: 25,
              fontFamily: "assets/font/Monotype Koufi Bold.ttf",
            ),
          )),
    );
  }
}
