import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter 15"),
      ),
      drawer: Drawer(),
      //1
      // body: Center(
      //   child: Container(
      //     height: 120,
      //     width: 120,
      //     color: Colors.orange.shade600,
      //     child: Align(
      //       alignment: Alignment.bottomCenter,
      //         child: Text("Hello")
      //     ),
      //   ),
      // )
      //2
      // body: Center(
      //   child: Container(
      //     height: 120.0,
      //     width: 120.0,
      //     color: Colors.blue[50],
      //     child: const Align(
      //       alignment: Alignment.topRight,
      //       child: FlutterLogo(
      //         size: 60,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
