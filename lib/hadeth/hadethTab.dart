import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_task/hadeth/hadeth.dart';

import '../chapterDetails/ChapterdetailsScreen.dart';
import '../chapterDetails/verseWidget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    loadHadethFile();
// TODO: implement build
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset("assets/images/hadeth.png")),
        Container(
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
                        color: Theme.of(context).primaryColor, width: 2))),
            child: const Text(
              "الاحاديث",
              style: TextStyle(fontSize: 25),
            )),
        Expanded(
          flex: 3,
          child: Allhadeth.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return hadethTitleWidget(Allhadeth[index]);
                  },
                  separatorBuilder: (context, index) => Container(
                        color: Theme.of(context).primaryColor,
                        width: double.infinity,
                        height: 2,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                      ),
                  itemCount: 50),
        )
      ],
    );
  }

  List<Hadeth> Allhadeth = [];
  void loadHadethFile() async {
    String fileContent = await rootBundle.loadString('assets/files/hadeth.txt');
    List<String> hadethList = fileContent.trim().split("#");
    for (int i = 0; i < hadethList.length ; i++) {
      String singleHadeth = hadethList[i];
      List<String> hadethlines = singleHadeth.trim().split("\n");
      String title = hadethlines[0];
      hadethlines.remove(0);
      String content = hadethlines.join('\n');
      Hadeth h = Hadeth(title, content);
      Allhadeth.add(h);
    }
    setState(() {});
  }
}

class hadethTitleWidget extends StatelessWidget{
  Hadeth hadeth ;
  hadethTitleWidget(this.hadeth);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed("hadethDetails" ,
        arguments: hadeth);
      },
      child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text(
           hadeth.title ,
            style: const TextStyle(
              fontSize: 25,
              fontFamily: "assets/font/Monotype Koufi Bold.ttf",
            ),
          )),
    );
  }
}

class hadethDetailsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/main_background.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
                  child: SingleChildScrollView(
                    child: Text(
                      args.content,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
