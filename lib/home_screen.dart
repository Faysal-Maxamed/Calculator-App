import 'package:calculator/themes.dart';
import 'package:calculator/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backlight,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 45, bottom: 20),
              alignment: Alignment.bottomRight,
              child: Text(
                "29+23",
                style: GoogleFonts.abel(
                  fontSize: 20,
                  color: historycolor,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 45, bottom: 20),
              alignment: Alignment.bottomRight,
              child: Text(
                "299",
                style: GoogleFonts.abel(
                    fontSize: 26,
                    color: resultcolor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textbuttonWidget(
                  text: "Ac",
                  textcolor: line1color,
                ),
                textbuttonWidget(
                  text: "C",
                  textcolor: line1color,
                ),
                textbuttonWidget(
                  text: "<",
                  textcolor: line1color,
                ),
                textbuttonWidget(
                  text: "/",
                  textcolor: backbuttoncolor,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textbuttonWidget(
                  text: "7",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: "8",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: "9",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: "*",
                  textcolor: backbuttoncolor,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textbuttonWidget(
                  text: "4",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: "5",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: "6",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: "-",
                  textcolor: backbuttoncolor,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textbuttonWidget(
                  text: "1",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: "2",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: "3",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: "+",
                  textcolor: backbuttoncolor,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textbuttonWidget(
                  text: "0",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: "00",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: ".",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  back: backbuttoncolor,
                  text: "0",
                  textcolor: textcolor,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
