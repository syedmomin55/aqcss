import 'package:aqcss/utils/constant.dart';
import 'package:aqcss/utils/custom_text_field.dart';
import 'package:aqcss/utils/customtext.dart';
import 'package:aqcss/widgets/Custom_drk_blue_button.dart';
import 'package:aqcss/widgets/Custom_drk_blue_con.dart';
import 'package:flutter/material.dart';

class RegistorVisitor extends StatefulWidget {
  const RegistorVisitor({Key? key}) : super(key: key);

  @override
  State<RegistorVisitor> createState() => _RegistorVisitorState();
}

class _RegistorVisitorState extends State<RegistorVisitor> {
  TextEditingController _name = TextEditingController();
  TextEditingController _residentname = TextEditingController();
  TextEditingController _adress = TextEditingController();
  TextEditingController _date = TextEditingController();
  TextEditingController _time = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: primarydarkblue),
        ),
        centerTitle: true,
        title: CustomText(
            text: 'Register a Visitor',
            fontsize: 18,
            fontWeight: FontWeight.w500,
            textcolor: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomDrkBlue(
                text: 'Type the visitors details',
                text2: 'Don’t forget to ask for ID'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  CustomTextField(
                      title: 'Visitor Name:',
                      controller: _name,
                      hint: 'Type in visitors name',
                      error: (error) => error.isEmpty ? 'enter name' : null),
                  SizedBox(height: 10,),
                  CustomTextField(
                      title: 'Visitor Name:',
                      controller: _residentname,
                      hint: 'Type in visitors name',
                      error: (error) => error.isEmpty ? 'enter name' : null),
                  SizedBox(height: 10,),
                  CustomTextField(
                      title: 'Visitor Name:',
                      controller: _adress,
                      hint: 'Type in visitors name',
                      error: (error) => error.isEmpty ? 'enter name' : null),
                  SizedBox(height: 10,),
                  CustomTextField(
                      title: 'Visitor Name:',
                      controller: _date,
                      hint: 'Type in visitors name',
                      error: (error) => error.isEmpty ? 'enter name' : null),
                  SizedBox(height: 10,),
                  CustomTextField(
                      title: 'Visitor Name:',
                      controller: _time,
                      hint: 'Type in visitors name',
                      error: (error) => error.isEmpty ? 'enter name' : null),
                  CustomDrkBlueButton(buttonText: 'Register', paddingHor: 10, paddingver: 10, onTap: (){})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
