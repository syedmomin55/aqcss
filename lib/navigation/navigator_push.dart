import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationHelper{
  static navPush(Widget TargetClass,BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>TargetClass));

  }
  static navReplace(Widget TargetClass,BuildContext context){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TargetClass));
  }
  static navRemoveUntil(Widget TargetClass, BuildContext context) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => TargetClass),
        ModalRoute.withName('/home'));
  }
}