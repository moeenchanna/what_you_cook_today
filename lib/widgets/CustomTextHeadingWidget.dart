import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextHeading extends StatelessWidget {
  final String title;
  final double textSize ;

  const CustomTextHeading({
    Key? key,
    required this.title,
    required this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.poppins(fontSize: textSize,fontWeight: FontWeight.bold),
    );
  }
}
