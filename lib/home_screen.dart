import 'package:calculator/themes.dart';
import 'package:calculator/themes/theme_provider.dart';
import 'package:calculator/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
    if (btnval == 'C') {
      history = '';
      firstnumber = 0;
      secondnumber = 0;
    } else if (btnval == 'Ac') {
      history = '';
      numberdisplay = '';
      firstnumber = 0;
      secondnumber = 0;
      result = '';
    } else if (btnval == '+' ||
        btnval == '-' ||
        btnval == '*' ||
        btnval == '/') {
      firstnumber = int.parse(numberdisplay);
      result = '';
      operation = btnval;
    } else if (btnval == '=') {
      secondnumber = int.parse(numberdisplay);
      if (operation == '+') {
        result = (firstnumber + secondnumber).toString();
      }
      if (operation == '-') {
        result = (firstnumber - secondnumber).toString();
      }
      if (operation == '*') {
        result = (firstnumber * secondnumber).toString();
      }
      if (operation == '/') {
        result = (firstnumber / secondnumber).toString();
      }

      history = firstnumber.toString() +
          operation.toString() +
          secondnumber.toString();
    } else {
      result = int.parse(numberdisplay + btnval).toString();
    }
    setState(() {
      numberdisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () =>
                  Provider.of<ThemeProvider>(context, listen: false)
                      .ontoggletheme(),
              child: Text("mm"),
            ),
            Container(
              padding: EdgeInsets.only(right: 45, bottom: 20),
              alignment: Alignment.bottomRight,
              child: Text(
                history,
                style: GoogleFonts.abel(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 45, bottom: 20),
              alignment: Alignment.bottomRight,
              child: Text(
                numberdisplay,
                style: GoogleFonts.abel(
                    fontSize: 26,
                    color: Theme.of(context).colorScheme.primary,
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
                  textcolor: Theme.of(context).colorScheme.primary,
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
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "8",
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "9",
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "*",
                  textcolor: Theme.of(context).colorScheme.primary,
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
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "5",
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "6",
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "-",
                  textcolor: Theme.of(context).colorScheme.primary,
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
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "2",
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "3",
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  text: "+",
                  calback: buttononclick,
                  textcolor: Theme.of(context).colorScheme.primary,
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
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: "00",
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  text: ".",
                  textcolor: Theme.of(context).colorScheme.primary,
                ),
                textbuttonWidget(
                  calback: buttononclick,
                  back: backbuttoncolor,
                  text: "=",
                  textcolor: Theme.of(context).colorScheme.primary,
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
