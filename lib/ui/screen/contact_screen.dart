import 'package:aqcss/navigation/navigator_push.dart';
import 'package:aqcss/utils/constant.dart';
import 'package:aqcss/utils/custom_text_field.dart';
import 'package:aqcss/utils/customtext.dart';
import 'package:aqcss/widgets/container_circular.dart';
import 'package:aqcss/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'manager_home.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<String> allItem = [
    'Jeronimo Ovejas Ortega',
    'Jeronimo Ovejas Ortega',
    'Jeronimo Ovejas Ortega',
    'Jeronimo Ovejas Ortega',
  ];
  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 1,
        elevation: 0,
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
                textcolor: Colors.white)
          ],
        ),
        centerTitle: true,
        title: CustomText(
            text: 'Contacts',
            fontsize: 18,
            fontWeight: FontWeight.w500,
            textcolor: Colors.white),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: primaryblue),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerCircular(
                text: 'Select a contact', text2: 'or create a new one'),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: ListView.builder(
                  itemCount: allItem.length,
                  itemBuilder: (BuildContext, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color(0xffB9E2FF)),
                                height: 35,
                                width: 30,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/icons/users.png',
                                      height: 5,
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CustomText(
                                text: allItem[index],
                                fontsize: 14,
                                fontWeight: FontWeight.w500,
                                textcolor: Colors.black),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: PhysicalModel(
                color: Colors.grey,
                elevation: 3,
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFFFFFF)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: 'Save a new contact',
                                fontsize: 24,
                                fontWeight: FontWeight.bold,
                                textcolor: Colors.black),
                            SizedBox(
                              height: 10,
                            ),
                            CustomTextField(
                                title: 'Visitor Name:',
                                controller: _name,
                                hint: 'Type in visitors name',
                                error: (error) =>
                                    error.isEmpty ? 'enter name' : null),
                            SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                                buttonText: 'Save Contact',
                                paddingHor: 20,
                                paddingver: 10,
                                onTap: () {
                                  NavigationHelper.navPush(ManagerHome(), context);
                                })
                          ],
                        ),
                      ),
                    ),
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
