import 'package:flutter/material.dart';

class PasswordToggle extends StatefulWidget {
  const PasswordToggle({super.key});

  @override
  State<PasswordToggle> createState() => _PasswordToggleState();
}

class _PasswordToggleState extends State<PasswordToggle> {
  bool _passwordVisible = true;

  // initState() optional
  // @override
  // void initState() {
  //   _passwordVisible=false;
  // }
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            obscureText: _passwordVisible,
            controller: passwordController,
            decoration: InputDecoration(
                suffixIcon: IconButton(
              icon: _passwordVisible
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            )),
          )
        ],
      ),
    );
  }
}
