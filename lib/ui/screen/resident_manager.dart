import 'package:aqcss/navigation/navigator_push.dart';
import 'package:aqcss/ui/screen/resident_manager.dart';
import 'package:aqcss/utils/constant.dart';
import 'package:aqcss/utils/customtext.dart';
import 'package:aqcss/widgets/Custom_Container_green.dart';
import 'package:aqcss/widgets/custom_button2.dart';
import 'package:flutter/material.dart';

import 'account_setting.dart';

class Resident_Manager extends StatefulWidget {
  const Resident_Manager({Key? key}) : super(key: key);

  @override
  State<Resident_Manager> createState() => _Resident_ManagerState();
}

class _Resident_ManagerState extends State<Resident_Manager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: primarygreen),
        ),
        leadingWidth: 1,
        leading: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            CustomText(
                text: 'Back',
                fontsize: 12,
                fontWeight: FontWeight.w500,
                textcolor: Colors.white),
          ],
        ),
        centerTitle: true,
        title: CustomText(
            text: 'Resident Manager',
            fontsize: 18,
            fontWeight: FontWeight.w500,
            textcolor: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainerGreen(
                text: 'Manage residents',
                text2: 'View and remove active residents'),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 450,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Container(
                        width: 300,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Colors.grey.shade200, width: 1)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                              text: 'Visitor:',
                                              fontsize: 10,
                                              fontWeight: FontWeight.w500,
                                              textcolor: Colors.grey),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          CustomText(
                                              text: 'Jeronimo Ovejas Ortega:',
                                              fontsize: 12,
                                              fontWeight: FontWeight.w700,
                                              textcolor: Colors.black),
                                        ],
                                      ),
                                    ],
                                  ),
                                  CustomText(
                                      text: 'Address::',
                                      fontsize: 10,
                                      fontWeight: FontWeight.w500,
                                      textcolor: Colors.grey),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  CustomText(
                                      text:
                                          'Luxury Residences, Main Street 12-B',
                                      fontsize: 12,
                                      fontWeight: FontWeight.w700,
                                      textcolor: Colors.black),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText(
                                              text: 'Time and Date::',
                                              fontsize: 10,
                                              fontWeight: FontWeight.w500,
                                              textcolor: Colors.grey),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          CustomText(
                                              text: '12:00pm 06-07-2023',
                                              fontsize: 12,
                                              fontWeight: FontWeight.w700,
                                              textcolor: Colors.black),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          CustomText(
                                              text: 'Resident::',
                                              fontsize: 10,
                                              fontWeight: FontWeight.w500,
                                              textcolor: Colors.grey),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          CustomText(
                                              text: 'John Doe Smith',
                                              fontsize: 12,
                                              fontWeight: FontWeight.w700,
                                              textcolor: Colors.black),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Positioned(
                                  top: 10,
                                  right: 0,
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            CustomButton2(
                buttonText: '      Download CSV file',
                paddingHor: 30,
                paddingver: 10,
                onTap: () {
                   NavigationHelper.navPush(AccountSetting(), context);
                })
          ],
        ),
      ),
    );
  }
}
