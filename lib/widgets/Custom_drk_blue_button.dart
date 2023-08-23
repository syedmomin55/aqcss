import 'package:aqcss/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomDrkBlueButton extends StatelessWidget {
  final String buttonText;

  final double paddingHor;
  final double paddingver;
  final Function onTap;

  const CustomDrkBlueButton(
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
            borderRadius: BorderRadius.circular(20),
            gradient: primarydarkblue,
          ),
          child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.print,color: Colors.white,),
                  SizedBox(width: 5,),
                  Text(
                    buttonText,
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
