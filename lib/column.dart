import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({Key? key}) : super(key: key);

  @override
  State<ColumnWidget> createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.yellowAccent,
          ),

          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),

          Container(
            width: 100,
            height: 100,
            color: Colors.orange,
          ),

          Container(
            width: 100,
            height: 100,
            color: Colors.purple,
          ),

          Container(
            width: 100,
            height: 100,
            color: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
