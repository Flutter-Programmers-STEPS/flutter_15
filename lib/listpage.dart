import 'package:flutter/material.dart';

class ListPageEx1 extends StatefulWidget {
  const ListPageEx1({super.key});

  @override
  State<ListPageEx1> createState() => _ListPageEx1State();
}

class _ListPageEx1State extends State<ListPageEx1> {
  // final List<String> entries = <String>['A', 'B', 'C', 'D'];
  // final List<int> colorCodes = <int>[600, 500, 100, 700];
final List<String> names=['Sreelakshmi','Arya','Ashin','Albin'];
final List<String> messages=['Hello','Good Afternoon','How r u','I m leave today'];
final List<String> profilepic=['https://picsum.photos/250?image=9','https://picsum.photos/251?image=9','https://picsum.photos/250?image=9','https://picsum.photos/250?image=9'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(

            leading: CircleAvatar(
              backgroundImage: NetworkImage("${profilepic[index]}"),
            ),
            title: Text("${names[index]}"),
            subtitle: Text("${messages[index]}"),
          );
        },
      ),
      // body: ListView(
      //   children: [
      //     Container(
      //       height: 50,
      //       color: Colors.amber[600],
      //       child: const Center(child: Text('Entry A')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[500],
      //       child: const Center(child: Text('Entry B')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[100],
      //       child: const Center(child: Text('Entry C')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[600],
      //       child: const Center(child: Text('Entry A')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[500],
      //       child: const Center(child: Text('Entry B')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[100],
      //       child: const Center(child: Text('Entry C')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[600],
      //       child: const Center(child: Text('Entry A')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[500],
      //       child: const Center(child: Text('Entry B')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[100],
      //       child: const Center(child: Text('Entry C')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[600],
      //       child: const Center(child: Text('Entry A')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[500],
      //       child: const Center(child: Text('Entry B')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[100],
      //       child: const Center(child: Text('Entry C')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[600],
      //       child: const Center(child: Text('Entry A')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[500],
      //       child: const Center(child: Text('Entry B')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[100],
      //       child: const Center(child: Text('Entry C')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[600],
      //       child: const Center(child: Text('Entry A')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[500],
      //       child: const Center(child: Text('Entry B')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[100],
      //       child: const Center(child: Text('Entry C')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[600],
      //       child: const Center(child: Text('Entry A')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[500],
      //       child: const Center(child: Text('Entry B')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[100],
      //       child: const Center(child: Text('Entry C')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[600],
      //       child: const Center(child: Text('Entry A')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[500],
      //       child: const Center(child: Text('Entry B')),
      //     ),
      //     Container(
      //       height: 50,
      //       color: Colors.amber[100],
      //       child: const Center(child: Text('Entry C')),
      //     ),
      //   ],
      // ),
    );
  }
}
