import 'package:flutter/material.dart';

import 'customtext.dart';



class CustomContainer extends StatelessWidget {
  final String text;
  final Function onPress;

  const CustomContainer({
    super.key,
    required this.text,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress(),
      child: Container(

        height: 60,
        width: 350,
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  text: text,
                  fontsize: 18,
                  fontWeight: FontWeight.w500,
                  textcolor: Colors.black),
              Icon(
                Icons.arrow_forward,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
