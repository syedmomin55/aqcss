import 'package:flutter/material.dart';

import 'customtext.dart';

class CustomContainer2 extends StatelessWidget {
  const CustomContainer2({Key? key, required this.text, required this.image})
      : super(key: key);
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      elevation: 3,
      color: Colors.grey,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 160,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xff8A42FF),
          // border: Border.all(color: Colors.black, width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.asset(
                    image,
                  )),
            ),
            SizedBox(
              height: 3,
            ),
            CustomText(
                text: text,
                fontsize: 12,
                fontWeight: FontWeight.w500,
                textcolor: Colors.white)
          ],
        ),
      ),
    );
  }
}
