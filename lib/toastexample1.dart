import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastEx1 extends StatefulWidget {
  const ToastEx1({super.key});

  @override
  State<ToastEx1> createState() => _ToastEx1State();
}

class _ToastEx1State extends State<ToastEx1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "THE toast message",
                  toastLength: Toast.LENGTH_SHORT,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.black,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },
              child: Text("Toast Message"))
        ],
      ),
    );
  }
}
