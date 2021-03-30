import 'package:flutter/material.dart';

import 'pages/register.dart';
import 'sidebar/sidebar_layout.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff0D1F35),
        primaryColor: Color(0xff0D1F35)),
    home: Register(), // Register Page
    // home: SidebarLayout(),
  ));
}
