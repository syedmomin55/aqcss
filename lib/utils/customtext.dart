import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fontWeight;
  final Color textcolor;

  const CustomText(
      {super.key,
      required this.text,
      required this.fontsize,
      required this.fontWeight,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize, fontWeight: fontWeight, color: textcolor,),
    );
  }
}
