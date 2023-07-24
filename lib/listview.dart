import 'package:flutter/material.dart';

class ListViewIcon extends StatefulWidget {
  const ListViewIcon({super.key});

  @override
  State<ListViewIcon> createState() => _ListViewIconState();
}

class _ListViewIconState extends State<ListViewIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Icon(Icons.message,
          size: 50,
            color: Colors.yellowAccent,

          ),
          Icon(Icons.phone,
            size: 50,),
          Icon(Icons.settings,
            size: 50,),
          Icon(Icons.menu),
          Icon(Icons.account_circle),
          Icon(Icons.password),
          Icon(Icons.visibility),
          Icon(Icons.visibility_off_sharp),
          Icon(Icons.lock),
          Icon(Icons.lock_open),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message)
        ],
      ),
    );
  }
}
