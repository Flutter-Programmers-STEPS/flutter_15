import 'package:flutter/material.dart';
import 'package:flutter_15/button.dart';
import 'package:flutter_15/chatpage.dart';
import 'package:flutter_15/grocery/screens/login/login_page.dart';
import 'package:flutter_15/passwordtoggle.dart';
import 'package:flutter_15/radiobutton.dart';
import 'package:flutter_15/tabbar.dart';
import 'package:flutter_15/textwidget.dart';

import 'drawerpage.dart';
import 'listview.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            elevation: 50,
            title: Text("WhatsApp"),
            bottom: TabBar(tabs: [
              Tab(
                child: Text("Chat"),
              ),
              Tab(
                child: Text("Password"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
              Tab(child: Text("ListView"),)
            ]),
          ),
          body: TabBarView(
              children: [
                TabBar_Example1(),
                PasswordToggle(),
                ChatPage(),

                DrawerPage(),
                ListViewIcon(),

              ]),
          drawer: Drawer(
            elevation: 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage:
                        NetworkImage('https://picsum.photos/250?image=9'),
                    // child: Image.network('https://picsum.photos/250?image=9'),
                    radius: 20,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                ),
                Text("Settings")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
