import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  const TasbehTab({super.key});

  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

int buttonCount = 0;

class _TasbehTabState extends State<TasbehTab> {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/head_sebha_logo.png",
                    )),
                Container(
                    height: 390,
                    child: Image.asset("assets/images/body_sebha_logo.png")),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 175 , vertical: 170),
                  child: Text("$buttonCount" , style: TextStyle(fontSize: 30,
                  color: Color(0xFFB7935F)),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: OutlinedButton(onPressed: () {
                   setState(() {
                     if (buttonCount < 33) {
                       buttonCount++;
                     }
                     else {
                       buttonCount = 0 ;
                     }
                   });
                  }, child: Text("أنقر هنا" , style: TextStyle(fontSize: 35),))),
                ],
              ),
            ),
            SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
}
