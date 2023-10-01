import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/radio1.png",
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "أذاعة القران الكريم",
              style: TextStyle(
                  fontSize: 30,
                  height: 10,
                  fontFamily: ("assets/font/Monotype Koufi Bold.ttf")),
            ),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Group 5.png")
          ],
        )
      ],
    );
  }
}
