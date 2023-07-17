import 'package:flutter/material.dart';
import 'package:flutter_15/button.dart';
import 'package:flutter_15/grocery/screens/login/login_page.dart';
import 'package:flutter_15/radiobutton.dart';
import 'package:flutter_15/textwidget.dart';

main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: LoginPage(),
    );
  }
}
