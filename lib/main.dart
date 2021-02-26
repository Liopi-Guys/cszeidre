import 'package:flutter/material.dart';
import 'package:cszeidre/pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialAppTitle?',
      theme: ThemeData(
        fontFamily: 'Quantico',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Color(0xffBABABA),
        accentColor: Color(0xFFCE8404),
      ),
      home: LoginPage(),
    );
  }
}
