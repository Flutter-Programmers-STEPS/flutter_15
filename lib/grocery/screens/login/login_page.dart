import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var emailController=TextEditingController();
  var passController=TextEditingController();
var email="", password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder()
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: passController,
              decoration: InputDecoration(
                border: OutlineInputBorder()
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {

              }, child: Text("Forgot password?",

              )),
            ),
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(onPressed: () {

              setState(() {
                print(emailController.text + passController.text);
              email=emailController.text;
              password=passController.text;


              });

            }, child: Text("Login")),
          ),

          Text(email)
        ],
      ),

    );
  }
}
