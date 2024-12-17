import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class textbuttonWidget extends StatelessWidget {
  const textbuttonWidget({
    super.key,
    this.back,
    required this.text,
    required this.textcolor,
  });

  final back;
  final text;
  final textcolor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: back,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(100),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: GoogleFonts.abel(
          fontSize: 23,
          fontWeight: FontWeight.w400,
          color: textcolor,
        ),
      ),
    );
  }
}
