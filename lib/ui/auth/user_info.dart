import 'package:aqcss/navigation/navigator_push.dart';
import 'package:aqcss/ui/screen/check_point_home.dart';
import 'package:aqcss/ui/screen/manager_home.dart';
import 'package:aqcss/utils/customtext.dart';
import 'package:aqcss/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../utils/custom_text_field.dart';
import '../screen/resident_home.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  bool showCatagories = true;
  List<String> allItem = [
    'Manager',
    'Security',
    'Resident',
  ];
  String selectedCatagory = '';
  TextEditingController _email = TextEditingController();
  TextEditingController _pin = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: 1,
        leading: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            CustomText(
                text: 'back',
                fontsize: 14,
                fontWeight: FontWeight.bold,
                textcolor: Colors.black),
          ],
        ),
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Center(
                child: CustomText(
                    text: 'You are almost done!',
                    fontsize: 16,
                    fontWeight: FontWeight.w500,
                    textcolor: Colors.blue),
              ),
              Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/images/image 2.png',
                ),
              ),
              CustomTextField(
                title: 'Email',
                controller: _email,
                hint: 'Type in your Email',
                error: (error) => error.isEmpty ? "enter your email" : null,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                title: 'Resident PIN',
                controller: _email,
                hint: 'Enter resident PIN',
                error: (error) => error.isEmpty ? "enter your email" : null,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                title: 'Passowrd',
                controller: _email,
                hint: 'Confirm your password',
                error: (error) => error.isEmpty ? "enter your email" : null,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              InkWell(
                onTap: () {
                  showCatagories = !showCatagories;
                  setState(() {});
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: CustomText(
                          text: selectedCatagory == ''
                              ? 'select type'
                              : selectedCatagory,
                          fontsize: 14,
                          fontWeight: FontWeight.w500,
                          textcolor: Colors.black),
                    ),
                  ),
                ),
              ),
              showCatagories
                  ? Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: ListView.builder(
                          itemCount: allItem.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                selectedCatagory = allItem[index];
                                showCatagories = false;
                                setState(() {});
                              },
                              child: Column(
                                children: [
                                  CustomText(
                                      text: allItem[index],
                                      fontsize: 14,
                                      fontWeight: FontWeight.w500,
                                      textcolor: Colors.white),
                                  Divider(),
                                ],
                              ),
                            );
                          }),
                    )
                  : Container(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomButton(
                  buttonText: 'Get Started',
                  paddingHor: 10,
                  paddingver: 10,
                  onTap: () {
                      if (selectedCatagory == 'Resident') {
                        NavigationHelper.navRemoveUntil(ResidentHome(), context);
                      } else if (selectedCatagory == 'Security') {
                        NavigationHelper.navRemoveUntil(CheckPointHome(), context);
                      } else {
                        NavigationHelper.navRemoveUntil(ManagerHome(), context);
                      }
                    }



                  ),
            ],
          ),
        ),
      ),
    );
  }
}
