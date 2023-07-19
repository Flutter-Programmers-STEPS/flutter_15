import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var email = "", password = "";

  //form key
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _loginFormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/first_image.jpg'),
              width: 200,
            ),

            Image.network('https://logos-world.net/wp-content/uploads/2020/11/Swiggy-Logo.png'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter email';
                  }
                  return null;
                },
                controller: emailController,
                decoration: InputDecoration(
                    label: Text("Email"),
                    hintText: "Enter email",
                    border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                controller: passController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password?",
                    )),
              ),
            ),
            SizedBox(
              height: 40,
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_loginFormKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("Success")));
                      }
                    });
                  },
                  child: Text("Login")),
            ),
            Text(email)
          ],
        ),
      ),
    );
  }
}
