import 'package:aqcss/navigation/navigator_push.dart';
import 'package:aqcss/ui/screen/pass_created.dart';
import 'package:aqcss/utils/constant.dart';
import 'package:aqcss/utils/custom_text_field.dart';
import 'package:aqcss/utils/customtext.dart';
import 'package:aqcss/widgets/container_circular.dart';
import 'package:aqcss/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CreatePasss extends StatefulWidget {
  const CreatePasss({Key? key}) : super(key: key);

  @override
  State<CreatePasss> createState() => _CreatePasssState();
}

class _CreatePasssState extends State<CreatePasss> {
  TextEditingController _name = TextEditingController();
  TextEditingController _date = TextEditingController();
  TextEditingController _time = TextEditingController();
  TextEditingController _stattime = TextEditingController();
  String selectedDate = '';
  var showCatagories = false;
  List<String> allItem = [
    'Jeronimo Ovejas Ortega',
    'Jorge Ovejas Ortega',
    'Jane Doe Smith',
    'John Doe Smith',
  ];
  String allCatagories = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 1,
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
                textcolor: Colors.white),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        title: Text('Create a Pass'),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: primaryblue),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerCircular(
                text: 'Type your visitors details',
                text2: 'or select an existing contact'),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.03,
            ),
            InkWell(
              onTap: () {
                showCatagories = !showCatagories;
                setState(() {});
              },
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CustomText(
                              text: allCatagories == ''
                                  ? 'Select Contact'
                                  : allCatagories,
                              fontsize: 14,
                              fontWeight: FontWeight.w500,
                              textcolor: Colors.black),
                        ),
                      ),
                    ),
                    showCatagories
                        ? Container(
                      height: 100,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: ListView.builder(
                          itemCount: allItem.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                allCatagories = allItem[index];
                                showCatagories = false;
                                setState(() {});
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                        text: allItem[index],
                                        fontsize: 14,
                                        fontWeight: FontWeight.w500,
                                        textcolor: Colors.black),
                                    Divider(
                                      color: Colors.grey,
                                      thickness: 1,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                        : Container(),
                    SizedBox(height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.03),
                    Column(
                      children: [
                        CustomTextField(
                            title: 'Visitor Name:',
                            controller: _name,
                            hint: 'Type in your visitors name',
                            error: (error) =>
                            error.isEmpty ? 'enter name' : null),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () async {
                            final DateTime? picked = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2030));
                            if (picked != null && picked != selectedDate) {
                              setState(() {
                                _date.text =
                                "${picked.day}/${picked.month}/${picked.year}";
                              });
                            }
                          },
                          child: CustomTextField(
                              isEnable: false,
                              title: 'Date',
                              controller: _date,
                              hint: 'Enter date',
                              error: (error) =>
                              error.isEmpty ? '06/07/2024' : null),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () async {
                                  final TimeOfDay? picked =
                                  await showTimePicker(
                                    context: context,
                                    initialTime: TimeOfDay.now(),
                                  );
                                  if (
                                  picked != null && picked != selectedDate
                                  ) {
                                    setState(() {
                                      _stattime.text = picked.format(context);
                                    });
                                  }
                                },
                                child: CustomTextField(
                                    isEnable: false,
                                    title: 'End Time',
                                    controller: _stattime,
                                    hint: '12:00pm',
                                    error: (error) =>
                                    error.isEmpty ? '06/07/2024' : null),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () async {
                                  final TimeOfDay?picked = await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),);
                                  if(picked!=null && picked!=selectedDate){
                                    setState(() {
                                      _time.text =picked.format(context);
                                    });
                                  }
                                },
                                child: CustomTextField(
                                    isEnable: false,
                                    title: 'Start Time',
                                    controller: _time,
                                    hint: '12:00pm',
                                    error: (error) =>
                                    error.isEmpty ? '06/07/2024' : null),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(
                buttonText: 'Create visitor Pass',
                paddingHor: 15,
                paddingver: 10,
                onTap: () {
                  NavigationHelper.navPush(PassCreated(), context);
                })
          ],
        ),
      ),
    );
  }
}
