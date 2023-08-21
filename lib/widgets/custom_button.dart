import 'package:aqcss/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;

  final double paddingHor;
  final double paddingver;
  final Function onTap;

  const CustomButton(
      {super.key,
      required this.buttonText,
      required this.paddingHor,
      required this.paddingver,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: paddingHor, vertical: paddingver),
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
          height: 55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: primaryblue,
          ),
          child: Center(
              child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
