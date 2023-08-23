import 'package:aqcss/navigation/navigator_push.dart';
import 'package:aqcss/utils/constant.dart';
import 'package:aqcss/utils/customtext.dart';
import 'package:aqcss/widgets/container_circular.dart';
import 'package:aqcss/widgets/custom_button.dart';
import 'package:aqcss/widgets/custom_button2.dart';
import 'package:flutter/material.dart';

import 'contact_screen.dart';

class PassCreated extends StatefulWidget {
  const PassCreated({Key? key}) : super(key: key);

  @override
  State<PassCreated> createState() => _PassCreatedState();
}

class _PassCreatedState extends State<PassCreated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 2,
        leading: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            CustomText(
                text: 'Back',
                fontsize: 14,
                fontWeight: FontWeight.w500,
                textcolor: Colors.white),
          ],
        ),
        centerTitle: true,
        title: CustomText(
            text: 'Pass Created',
            fontsize: 18,
            fontWeight: FontWeight.w600,
            textcolor: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: primaryblue),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerCircular(
                text: 'Your pass is ready', text2: 'Share it with your visitor'),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 320,
              decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
                  )),
              child: Center(
                child: CustomText(
                    text: 'Luxury Residences',
                    fontsize: 20,
                    fontWeight: FontWeight.w600,
                    textcolor: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 354,
              width: 296,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 180,
                      width: 200,
                      child: Image.asset(
                        'assets/icons/image 4.png',
                      ),
                    ),
                    CustomText(
                        text: 'Visitor',
                        fontsize: 10,
                        fontWeight: FontWeight.w500,
                        textcolor: Colors.grey),
                    CustomText(
                        text: 'Jeronimo Ovejas Ortega',
                        fontsize: 10,
                        fontWeight: FontWeight.bold,
                        textcolor: Colors.black),
                    CustomText(
                        text: 'Address',
                        fontsize: 10,
                        fontWeight: FontWeight.w500,
                        textcolor: Colors.grey),
                    CustomText(
                        text: 'Luxury Residences, Main Street 12-B',
                        fontsize: 10,
                        fontWeight: FontWeight.bold,
                        textcolor: Colors.black),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: 'Time and Date:',
                                fontsize: 10,
                                fontWeight: FontWeight.w500,
                                textcolor: Colors.grey),
                            CustomText(
                                text: '12:00pm 06-07-2023:',
                                fontsize: 10,
                                fontWeight: FontWeight.bold,
                                textcolor: Colors.black),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            CustomText(
                                text: 'Time and Date:',
                                fontsize: 10,
                                fontWeight: FontWeight.w500,
                                textcolor: Colors.grey),
                            CustomText(
                                text: '12:00pm 06-07-2023:',
                                fontsize: 10,
                                fontWeight: FontWeight.bold,
                                textcolor: Colors.black),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            CustomButton(buttonText: 'Send to Visitor', paddingHor: 20, paddingver: 5, onTap: (){}),
            SizedBox(height: 10,),
            CustomButton2(buttonText: 'Save Pass', paddingHor: 20, paddingver: 10, onTap: (){
              NavigationHelper.navPush(ContactScreen(), context);
            })
          ],
        ),
      ),
    );
  }
}
