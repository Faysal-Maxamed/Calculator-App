import 'package:calculator/themes.dart';
import 'package:calculator/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int firstnumber = 0;
  int secondnumber = 0;
  String history = '';
  String numberdisplay = '';
  String result = '';
  String operation = '';

  void buttononclick(btnval) {
    print(btnval);
  }

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textbuttonWidget(
                  calback: buttononclick,
                  text: "Ac",
                  textcolor: line1color,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "C",
                  textcolor: line1color,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "<",
                  textcolor: line1color,
                ),
                textbuttonWidget(
                  calback: buttononclick,
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
                  calback: buttononclick,
                  text: "7",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "8",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "9",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  calback: buttononclick,
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
                  calback: buttononclick,
                  text: "4",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "5",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "6",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  calback: buttononclick,
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
                  calback: buttononclick,
                  text: "1",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "2",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "3",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  text: "+",
                  calback: buttononclick,
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
                  calback: buttononclick,
                  text: "0",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "00",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: ".",
                  textcolor: textcolor,
                ),
                textbuttonWidget(
                  calback: buttononclick,
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
