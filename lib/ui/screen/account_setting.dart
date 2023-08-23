import 'package:aqcss/utils/custom_text_field.dart';
import 'package:aqcss/utils/customtext.dart';
import 'package:aqcss/widgets/custom_button2.dart';
import 'package:flutter/material.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({Key? key}) : super(key: key);

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 1,
        elevation: 0,
        backgroundColor: Colors.white38,
        leading: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            SizedBox(
              width: 5,
            ),
            CustomText(
                text: 'Back',
                fontsize: 13,
                fontWeight: FontWeight.w600,
                textcolor: Colors.black)
          ],
        ),
        centerTitle: true,
        title: CustomText(
            text: 'Account Settings',
            fontsize: 18,
            fontWeight: FontWeight.w700,
            textcolor: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.3,
              ),
              CustomTextField(
                  title: 'Residencial Name',
                  controller: _name,
                  hint: 'Luxury Residential',
                  error: (error) => error.isEmpty ? 'enter name' : null),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                  title: 'Main Address',
                  controller: _name,
                  hint: 'Main Street',
                  error: (error) => error.isEmpty ? 'enter main street' : null),
              SizedBox(
                height: 10,
              ),
              CustomText(
                  text: 'Resident PIN',
                  fontsize: 14,
                  fontWeight: FontWeight.w700,
                  textcolor: Colors.black),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  hintText: '112233',hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color(0xff696969),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomText(
                  text: 'License Status',
                  fontsize: 14,
                  fontWeight: FontWeight.w600,
                  textcolor: Colors.black),
              LinearProgressIndicator(
                  backgroundColor: Colors.green,
                  value: 0.1,
                  minHeight: 10,
                  color: Color(0xff696969),),
              SizedBox(
                height: 10,
              ),
              CustomText(
                  text: 'License Status',
                  fontsize: 14,
                  fontWeight: FontWeight.w600,
                  textcolor: Colors.black),
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  hintText: '112233',hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color(0xff696969),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                  CustomText(
                      text: 'Need more resident licenses?',
                      fontsize: 14,
                      fontWeight: FontWeight.w500,
                      textcolor: Colors.grey),CustomText(
                      text: 'Click here?',
                      fontsize: 14,
                      fontWeight: FontWeight.w500,
                      textcolor: Colors.blue),


                ],
              ),
              CustomButton2(buttonText: 'Save Changes', paddingHor: 10, paddingver: 10, onTap: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
