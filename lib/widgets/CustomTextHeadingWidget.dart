import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextHeading extends StatelessWidget {
  final String title;

  const CustomTextHeading({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.bebasNeue(fontSize: 40),
    );
  }
}
