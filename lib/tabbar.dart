import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TabBar_Example1 extends StatefulWidget {
  const TabBar_Example1({super.key});

  @override
  State<TabBar_Example1> createState() => _TabBar_Example1State();
}

class _TabBar_Example1State extends State<TabBar_Example1> {
  @override

  var dateTime=DateTime.now();
 // var year=dateTime.year.toString();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title: Text("Sreelakshmi"),
            subtitle: Text("How are you?"),
          ),
          ListTile(
            trailing: Text(dateTime.toString()),
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              
            ),
            title: Text("Ashin"),
            subtitle: Text("What about class"),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title: Text("Albin"),
            subtitle: Text("I m on leave today"),
          )
        ],
      ),
    );
  }
}
