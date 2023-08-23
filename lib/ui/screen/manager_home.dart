import 'package:aqcss/navigation/navigator_push.dart';
import 'package:aqcss/ui/screen/visitor_history.dart';
import 'package:flutter/material.dart';

import '../../utils/constant.dart';
import '../../utils/customtext.dart';
import 'create_artical.dart';

class ManagerHome extends StatefulWidget {
  const ManagerHome({Key? key}) : super(key: key);

  @override
  State<ManagerHome> createState() => _ManagerHomeState();
}

class _ManagerHomeState extends State<ManagerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text(''),
        flexibleSpace:
            Container(decoration: BoxDecoration(gradient: primarygreen)),
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
                        gradient: primarygreen,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 90,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white38),
                                child: Center(
                                  child: CustomText(
                                      text: 'Manager',
                                      fontsize: 14,
                                      fontWeight: FontWeight.w500,
                                      textcolor: Colors.white),
                                ),
                              ),
                              Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(500),
                                      color: Colors.blue),
                                  child: Center(
                                    child: CustomText(
                                        text: 'JD',
                                        fontsize: 18,
                                        fontWeight: FontWeight.bold,
                                        textcolor: Colors.white),
                                  ))
                            ],
                          ),
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
                        Expanded(
                          child: PhysicalModel(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey,
                            elevation: 5,
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.white, width: 2),
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
                                            'assets/icons/calendar-clockgreen (1).png')),
                                  ),
                                  CustomText(
                                      text: 'Visitor History',
                                      fontsize: 12,
                                      fontWeight: FontWeight.w700,
                                      textcolor: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: PhysicalModel(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(20),
                            elevation: 5,
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.white, width: 2)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: (){NavigationHelper.navPush(VisitorHistory(), context);},
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      child: Image.asset(
                                        'assets/icons/Vectorgreen.png',
                                      ),
                                    ),
                                  ),
                                  CustomText(
                                      text: 'Resident Manager',
                                      fontsize: 14,
                                      fontWeight: FontWeight.w600,
                                      textcolor: Colors.black),
                                ],
                              ),
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
            // // ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 120,
            //   child: Padding(
            //     padding:
            //     const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         CustomText(
            //             text: 'News',
            //             fontsize: 24,
            //             fontWeight: FontWeight.bold,
            //             textcolor: Colors.black),
            //         SizedBox(
            //           height: 10,
            //         ),
            //         CustomText(
            //             text: 'Latest posts from Manager',
            //             fontsize: 16,
            //             fontWeight: FontWeight.w700,
            //             textcolor: Colors.black),
            //       ],
            //     ),
            //   ),
            // ),
            // Container(
            //   height: 170,
            //   width: 350,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //       color: Color(0xff838383)),
            //   child: Padding(
            //     padding:
            //     const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         CustomText(
            //             text: 'June 14th, 2023',
            //             fontsize: 10,
            //             fontWeight: FontWeight.w500,
            //             textcolor: Colors.white70),
            //         SizedBox(
            //           height: 5,
            //         ),
            //         CustomText(
            //             text: 'Hello Neighbor',
            //             fontsize: 20,
            //             fontWeight: FontWeight.w700,
            //             textcolor: Colors.white),
            //         CustomText(
            //             text: 'We will be now using a QR access app ',
            //             fontsize: 12,
            //             fontWeight: FontWeight.w700,
            //             textcolor: Colors.white),
            //         CustomText(
            //             text: 'in the building for... ',
            //             fontsize: 12,
            //             fontWeight: FontWeight.w700,
            //             textcolor: Colors.white),
            //         SizedBox(height: 20,),
            //         Row(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           crossAxisAlignment: CrossAxisAlignment.end,
            //           children: [
            //             CustomText(
            //                 text: 'READ MORE',
            //                 fontsize: 10,
            //                 fontWeight: FontWeight.w500,
            //                 textcolor: Colors.white)
            //           ],
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Row(
              children: [
                Expanded(
                  child: PhysicalModel(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                    elevation: 5,
                    child: InkWell(
                      onTap: (){
                        NavigationHelper.navPush(CreateArtical(), context);
                      },
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
                                      'assets/icons/commentgreen-alt 1.png')),
                            ),
                            CustomText(
                                text: 'Create Article',
                                fontsize: 12,
                                fontWeight: FontWeight.w700,
                                textcolor: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: PhysicalModel(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                    elevation: 5,
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              'assets/icons/settingsgreen-sliders 1.png',
                            ),
                          ),
                          CustomText(
                              text: 'Go to contacts',
                              fontsize: 14,
                              fontWeight: FontWeight.w600,
                              textcolor: Colors.black),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
