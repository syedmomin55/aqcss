import 'package:aqcss/utils/constant.dart';
import 'package:aqcss/utils/customtext.dart';
import 'package:flutter/material.dart';

class ContainerCircular extends StatelessWidget {


  @override
 final String text ;final String text2 ;

  const ContainerCircular({super.key, required this.text, required this.text2});
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.grey,
      elevation: 4,
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40),
            ),
            gradient: primaryblue),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              CustomText(text: text, fontsize: 24, fontWeight: FontWeight.w700, textcolor: Colors.white),
              CustomText(
                  text: text2,
                  fontsize: 16,
                  fontWeight: FontWeight.w500,
                  textcolor: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
