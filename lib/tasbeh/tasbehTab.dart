import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (buttonCount < 33) {
                        buttonCount++;
                      }
                      else {
                        buttonCount = 0 ;
                      }
                    });
                  },
                  child: Container(
                      height: 390,
                      child: Image.asset("assets/images/body_sebha_logo.png")),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("$buttonCount" , style: TextStyle(fontSize: 30),)),
              ],
            ),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: ElevatedButton(onPressed: () {}, child: Text("أنقر" , style: TextStyle(fontSize: 35),))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
