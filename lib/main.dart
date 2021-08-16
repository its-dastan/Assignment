import 'package:flutter/material.dart';

import 'pages/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xff0D1F35),
            primaryColor: Color(0xff0D1F35)),
        home: Register(), // Register Page
        // home: SidebarLayout(),
      ),
    );
  }
}
