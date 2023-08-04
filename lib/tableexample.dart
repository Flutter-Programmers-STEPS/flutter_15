import 'package:flutter/material.dart';

class TableEx1 extends StatefulWidget {
  const TableEx1({super.key});

  @override
  State<TableEx1> createState() => _TableEx1State();
}

class _TableEx1State extends State<TableEx1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(children: [
          Table(
            textDirection: TextDirection.rtl,
            border: TableBorder.all(width: 2, color: Colors.green),
            children: const [
              TableRow(children: [
                TableCell(child: Text("No")),
                TableCell(child: Text("Name")),
                TableCell(child: Text("Course")),
              ]),
              TableRow(children: [
                TableCell(child: Text("1")),
                TableCell(child: Text("Sreelakshmi")),
                TableCell(child: Text("Flutter")),
              ]),
            ],
          ),
          DataTable(
              border: TableBorder.all(width: 2),
              columns: [
            DataColumn(label: Text("No")),
            DataColumn(label: Text("Name"))
          ], rows: [
            DataRow(cells: [
              DataCell(Text("1")),
              DataCell(Text("Sree")),
            ])
          ])
        ]),
      ),
    );
  }
}
