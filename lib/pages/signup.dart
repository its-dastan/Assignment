import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';

class Signup extends StatefulWidget {
  final Function onTap;
  Signup(this.onTap);
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.15,
            child: Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 48.0),
                child: Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                        fontFamily: "alsscrp",
                        fontWeight: FontWeight.bold,
                        color: Color(0xffC1E6FF),
                        fontSize: 40),
                  ),
                ),
              ),
              Positioned(
                top: -25,
                left: -25,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xffCF5FE4),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: -25,
                left: 45,
                child: Container(
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                    color: Color(0xff6423FF),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: -25,
                right: -25,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xffD2F6FC),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Positioned(
                top: -25,
                right: 45,
                child: Container(
                  height: 95,
                  width: 95,
                  decoration: BoxDecoration(
                    color: Color(0xff86E876),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              "Hello",
              style: TextStyle(
                  fontFamily: "alsscrp",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      autofocus: true,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "cambria",
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          fontFamily: "cambria",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "cambria",
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'E-mail',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          fontFamily: "cambria",
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                    // color: Color(0xff47596E),
                    // borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: DateTimeFormField(
                      dateTextStyle: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: "DOB",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontFamily: "cambria",
                            color: Colors.white),
                        errorStyle: TextStyle(color: Colors.redAccent),
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.event_note,
                        ),
                      ),
                      mode: DateTimeFieldPickerMode.time,
                      autovalidateMode: AutovalidateMode.always,
                      validator: (e) => (e?.day ?? 0) == 1
                          ? 'Please not the first day'
                          : null,
                      onDateSelected: (DateTime value) {
                        print(value);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "cambria",
                          color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontFamily: "cambria",
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: TextField(
                      obscureText: true,
                      obscuringCharacter: "*",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "cambria",
                          color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontFamily: "cambria",
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      print("Login Tapped");
                    },
                    child: Container(
                      width: 150,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0Xff6730EC),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontFamily: "cambria",
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 73,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              child: Stack(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            fontFamily: "cambria",
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        GestureDetector(
                          onTap: widget.onTap,
                          child: Text(
                            " Signin!",
                            style: TextStyle(
                              color: Colors.blue,
                              fontFamily: "cambria",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -25,
                    right: -25,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffCC3791),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -25,
                    left: -25,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffE08E2E),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
