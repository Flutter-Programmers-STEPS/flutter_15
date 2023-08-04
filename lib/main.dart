import 'package:flutter/material.dart';
import 'package:flutter_15/gridviewexample.dart';
import 'package:flutter_15/listpage.dart';
import 'package:flutter_15/passwordtoggle.dart';
import 'package:flutter_15/tabbar.dart';
import 'package:flutter_15/tableexample.dart';
import 'package:flutter_15/toastexample1.dart';

import 'drawerpage.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: DefaultTabController(
        length: 7,
        child: Scaffold(
          appBar: AppBar(
            elevation: 50,
            title: const Text("WhatsApp"),
            bottom: const TabBar(tabs: [
              Tab(
                child: Text("Chat"),
              ),
              Tab(
                child: Text("Password"),
              ),
              Tab(
                child: Text("Table"),
              ),
              Tab(
                child: Text("Calls"),
              ),
              Tab(
                child: Text("ListView"),
              ),
              Tab(
                child: Text("GridView"),
              ),
              Tab(
                child: Text("Toast"),
              )
            ]),
          ),
          body: const TabBarView(children: [
            TabBar_Example1(),
            PasswordToggle(),
            TableEx1(),
            DrawerPage(),
            ListPageEx1(),
            GridViewExample1(),
            ToastEx1()
          ]),
          drawer: const Drawer(
            elevation: 100,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
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
