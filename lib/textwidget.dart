import 'package:flutter/material.dart';

class TextExample extends StatefulWidget {
  const TextExample({super.key});

  @override
  State<TextExample> createState() => _TextExampleState();
}

class _TextExampleState extends State<TextExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.yellowAccent,
              child: Text(
                "Hello Worldfddggggggggggggggggggggggggg tr"
                " rtyrty rtyrtyrtyr fgfghfgh fgfhfghh fgfhfgh fgfhfgj dfdgfg"
                "fdgfhgfgh fgfjghj fgfghfgjh dfgdfgh t ryrtyrt y er trty rt e"
                "tgrdyrtu 5y yuy ryr dfdfgfghg  tryrtu 5yrtutyu 56yrthth rt"
                " 5ytyrtrhf hgh fgfhfghg ytytj",
                textAlign: TextAlign.justify,
                textDirection: TextDirection.rtl,
                maxLines: 10,
                //textScaleFactor: 2,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    backgroundColor: Colors.orange,
                    //fontWeight: FontWeight.w500
                    fontWeight: FontWeight.bold,
                    //decoration: TextDecoration.underline
                    // decoration: TextDecoration.overline
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.white,
                    letterSpacing: 10,
                    wordSpacing: 50),
              ),
            ),
            Text("Font Changed using custome font",
                style: TextStyle(
                    fontFamily: "BacasimeAntique",
                    fontWeight: FontWeight.w500)),
            Text(
              "Font Changed using custome font",
              style: TextStyle(
                  fontFamily: "Fasthand", fontWeight: FontWeight.w500),
            ),
            Text(
              "Font Changed using custome font",
              style: TextStyle(
                  fontFamily: "ChelaOne", fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                onTap: () {},
                decoration: InputDecoration(
                    hintText: "Enter email",
                    label: Text("Email"),
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                decoration: InputDecoration(
                  label: Row(
                    children: [
                      Icon(Icons.email),
                      Text("Email")
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
