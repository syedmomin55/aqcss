import 'package:flutter/material.dart';

import '../../utils/constant.dart';
import '../../utils/customtext.dart';
import '../../widgets/Custom_Container_green.dart';

class CreateArtical extends StatefulWidget {
  const CreateArtical({Key? key}) : super(key: key);

  @override
  State<CreateArtical> createState() => _CreateArticalState();
}

class _CreateArticalState extends State<CreateArtical> {
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
            text: 'Create Article',
            fontsize: 18,
            fontWeight: FontWeight.w500,
            textcolor: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainerGreen(
                text: 'Publish a new article',
                text2: 'Send a note to all of your residents'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.shade200)),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusColor: Colors.white,
                        fillColor: Colors.white,
                        filled: true),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        child: TextField(
                          maxLines: 100,
                          decoration: InputDecoration(
                              hintText: 'body',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                        width: 350,
                        height: 285,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.grey.shade200, width: 1),
                        ),
                      ),
                      Positioned(
                          bottom: 5,
                          right: 5,
                          child: Icon(
                            Icons.send,
                            color: Colors.green,
                          ))
                    ],
                  ),
                  CustomText(
                      text: 'Recently Published',
                      fontsize: 24,
                      fontWeight: FontWeight.bold,
                      textcolor: Colors.black),
                  SizedBox(
                    height: 2,
                  ),
                  CustomText(
                      text: 'Edit or delete previous articles',
                      fontsize: 14,
                      fontWeight: FontWeight.w500,
                      textcolor: Colors.black),
                  Stack(
                    children: [
                      Container(
                        width: 339,
                        height: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: 'Title:',
                                  fontsize: 10,
                                  fontWeight: FontWeight.w500,
                                  textcolor: Colors.grey),
                              CustomText(
                                  text: 'Hello Neighbor:',
                                  fontsize: 14,
                                  fontWeight: FontWeight.bold,
                                  textcolor: Colors.black),
                              CustomText(
                                  text: 'Body::',
                                  fontsize: 10,
                                  fontWeight: FontWeight.w500,
                                  textcolor: Colors.grey),
                              CustomText(
                                  text: 'We will be now using a QR access app ',
                                  fontsize: 14,
                                  fontWeight: FontWeight.bold,
                                  textcolor: Colors.black), CustomText(
                                  text: 'Published::',
                                  fontsize: 10,
                                  fontWeight: FontWeight.w500,
                                  textcolor: Colors.grey),
                              CustomText(
                                  text: 'Jun 14th 2023 ',
                                  fontsize: 14,
                                  fontWeight: FontWeight.bold,
                                  textcolor: Colors.black),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: 10,
                          right: 10,
                          child: Container(
                              child: Icon(
                            Icons.close,
                            color: Colors.red,
                          )))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
