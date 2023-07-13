import 'package:flutter/material.dart';

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

enum Gender{
  Male,
  Female,
  Other
}

enum Days{
  Monday,
  Tuesday
}

class _RadioExampleState extends State<RadioExample> {

  var radioValue=Gender.Male;
  var radioDay=Days.Monday;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
       Row(
         children: [
           Radio(value: Gender.Male,
             groupValue:radioValue ,
             onChanged: (value) {
               setState(() {
                 radioValue=value!;
               });
             },),
           Text("Male")
         ],
       ),
          Row(
            children: [
              Radio(value: Gender.Female,
                groupValue: radioValue,
                onChanged: (value) {
                  setState(() {
                    radioValue=value!;
                  });
                },),
              Text("Female")
            ],
          ),
          Row(
            children: [
              Radio(value: Gender.Other,
                groupValue: radioValue,
                onChanged: (value) {
                  setState(() {
                    radioValue=value!;
                  });
                },),
              Text("Female")
            ],
          ),
          RadioListTile(
            title: Text("Monday"),
              value: Days.Monday,
              groupValue: radioDay,
              onChanged: (value) {
                setState(() {
                  radioDay=value!;
                });
              },)
        ],
      ),
    );
  }
}
