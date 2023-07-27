import 'package:flutter/material.dart';

class GridViewExample1 extends StatefulWidget {
  const GridViewExample1({super.key});

  @override
  State<GridViewExample1> createState() => _GridViewExample1State();
}

class _GridViewExample1State extends State<GridViewExample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        // gridDelegate: ,
        crossAxisCount: 2,
        mainAxisSpacing: 2,// row
        crossAxisSpacing: 20, // column
        padding: EdgeInsets.all(20),
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
            color: Colors.red,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.orange,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
