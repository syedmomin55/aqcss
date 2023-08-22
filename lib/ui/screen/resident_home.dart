import 'package:aqcss/utils/constant.dart';
import 'package:aqcss/utils/customtext.dart';
import 'package:flutter/material.dart';

class ResidentHome extends StatefulWidget {
  const ResidentHome({Key? key}) : super(key: key);

  @override
  State<ResidentHome> createState() => _ResidentHomeState();
}

class _ResidentHomeState extends State<ResidentHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(''),
        flexibleSpace:
            Container(decoration: BoxDecoration(gradient: primaryblue)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 355,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: primaryblue,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40))),
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                              text: 'Resident',
                              fontsize: 14,
                              fontWeight: FontWeight.w500,
                              textcolor: Colors.white),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                              text: 'Luxury Residences',
                              fontsize: 14,
                              fontWeight: FontWeight.w500,
                              textcolor: Colors.white),
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                              text: 'Welcome, John Doe!',
                              fontsize: 24,
                              fontWeight: FontWeight.w700,
                              textcolor: Colors.white),
                          SizedBox(
                            height: 5,
                          ),
                          CustomText(
                              text: 'What do you want to do?',
                              fontsize: 17,
                              fontWeight: FontWeight.w600,
                              textcolor: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 20,
                    right: 20,
                    child: Row(
                      children: [
                        PhysicalModel(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          elevation: 5,
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                          'assets/images/iso-blue 3.png')),
                                ),
                                CustomText(
                                    text: 'Create a Pass',
                                    fontsize: 12,
                                    fontWeight: FontWeight.w700,
                                    textcolor: Colors.black),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        PhysicalModel(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5,
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.white, width: 2)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(
                                    'assets/icons/users.png',
                                  ),
                                ),
                                CustomText(
                                    text: 'Go to contacts',
                                    fontsize: 14,
                                    fontWeight: FontWeight.w600,
                                    textcolor: Colors.black)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.1,
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: 'News',
                        fontsize: 24,
                        fontWeight: FontWeight.bold,
                        textcolor: Colors.black),
                    SizedBox(
                      height: 10,
                    ),
                    CustomText(
                        text: 'Latest posts from Manager',
                        fontsize: 16,
                        fontWeight: FontWeight.w700,
                        textcolor: Colors.black),
                  ],
                ),
              ),
            ),
            Container(
              height: 170,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff838383)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                        text: 'June 14th, 2023',
                        fontsize: 10,
                        fontWeight: FontWeight.w500,
                        textcolor: Colors.white70),
                    SizedBox(
                      height: 5,
                    ),
                    CustomText(
                        text: 'Hello Neighbor',
                        fontsize: 20,
                        fontWeight: FontWeight.w700,
                        textcolor: Colors.white),
                    CustomText(
                        text: 'We will be now using a QR access app ',
                        fontsize: 12,
                        fontWeight: FontWeight.w700,
                        textcolor: Colors.white),
                    CustomText(
                        text: 'in the building for... ',
                        fontsize: 12,
                        fontWeight: FontWeight.w700,
                        textcolor: Colors.white),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomText(
                            text: 'READ MORE',
                            fontsize: 10,
                            fontWeight: FontWeight.w500,
                            textcolor: Colors.white)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
