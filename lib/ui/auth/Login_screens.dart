import 'package:aqcss/navigation/navigator_push.dart';
import 'package:aqcss/ui/auth/sign_up.dart';
import 'package:aqcss/utils/custom_text_field.dart';
import 'package:aqcss/utils/customtext.dart';
import 'package:aqcss/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _pin = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
            text: 'Logo',
            fontsize: 18,
            fontWeight: FontWeight.w700,
            textcolor: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/iso-blue 3.png'),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomText(
                  text: 'Log in to start using our app',
                  fontsize: 16,
                  fontWeight: FontWeight.w500,
                  textcolor: Colors.grey),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
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
              CustomButton(
                  buttonText: 'Log In',
                  paddingHor: 10,
                  paddingver: 10,
                  onTap: () {
                    NavigationHelper.navPush(SignUp(), context);
                  }),
              SizedBox(height: 5,),
              CustomText(
                  text: 'I forgot my login details',
                  fontsize: 14,
                  fontWeight: FontWeight.w500,
                  textcolor: Colors.blue),SizedBox(height: 5,),
              CustomText(
                  text: 'Create an account',
                  fontsize: 14,
                  fontWeight: FontWeight.w500,
                  textcolor: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
