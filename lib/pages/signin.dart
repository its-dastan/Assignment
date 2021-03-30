import '../sidebar/sidebar_layout.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  final Function onTap;

  const Signin(this.onTap);
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: height * 0.35,
            child: Stack(
              children: [
                Positioned(
                  top: -10,
                  left: -10,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: 105,
                  left: -40,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xff035f6E).withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: 160,
                  left: 60,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color(0xffDB1D4B).withOpacity(0.7),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: -50,
                  left: 40,
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color(0xffF8B32E).withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: -50,
                  right: -70,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xff4DCEFC),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 80,
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color(0xffB0B8D1).withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 70,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffBC5E32).withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Text(
                  "Welcome\nBack",
                  style: TextStyle(
                      fontFamily: "alsscrp",
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 40),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff47596E),
                            borderRadius: BorderRadius.circular(20)),
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
                            color: Color(0xff47596E),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: TextField(
                            obscuringCharacter: "*",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: "cambria",
                                color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'OTP',
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  fontFamily: "cambria",
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: GestureDetector(
                    onTap: () {
                      print("Forgot Password.");
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontFamily: "cambria",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                SidebarLayout()));
                  },
                  child: Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color(0Xff6730EC),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: "cambria",
                          color: Colors.white,
                          fontSize: 27,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 78.0),
            child: Row(
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontFamily: "cambria",
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    " Sign up!",
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: "cambria",
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
