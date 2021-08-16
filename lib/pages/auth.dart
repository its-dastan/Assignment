import 'package:flutter/material.dart';
import 'pages.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D1F35),
      body: isClicked ? Signin(_onTap) : Signup(_onTap),
    );
  }

  void _onTap() {
    print("button is clicked");
    setState(() {
      isClicked = !isClicked;
    });
  }
}
