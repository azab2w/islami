import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_task/chapterDetails/verseWidget.dart';

class ChapterDetailsScreen extends StatefulWidget {
  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if(verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/main_background.png'),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text("بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِ",style: TextStyle(fontSize: 30),),
          ),
          body: verses.isEmpty?
          Center(child: CircularProgressIndicator())

          : Card(
            margin: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
            child: ListView.builder(itemBuilder: (context , index){
              return VerseWidget(verses[index],index);
    } , itemCount: verses.length,),
          ),
        )
    );
  }

  List<String> verses = [];

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = fileContent.split("\n");
    setState(() {

    });
  }
}

class ChapterDetailsArgs {
  String title;
  int index;
  ChapterDetailsArgs(this.title, this.index);
}
