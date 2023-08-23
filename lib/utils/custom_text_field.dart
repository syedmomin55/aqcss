import 'package:flutter/material.dart';

import 'customtext.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final String hint;
  final Function(String) error;
  final bool? isPassword;
  final bool? isEnable;

  // final Icon prefixIcon;

  const CustomTextField(
      {super.key,
      required this.title,
      required this.controller,
      required this.hint,
      required this.error,
      this.isPassword = false, this.isEnable=true,  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: title,
            fontsize: 14,
            fontWeight: FontWeight.bold,
            textcolor: Colors.black,),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          enabled: isEnable,
          obscureText: isPassword!,
          controller: controller,
          validator: (err) => error(err!),
          decoration: InputDecoration(

            // suffixIcon: prefixIcon,
            filled: true,
            fillColor: Colors.white,
            hintText: hint,hintStyle: TextStyle(color: Colors.grey),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.blue)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.red)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.red)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
      ],
    );
  }
}
