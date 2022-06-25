import 'package:flutter/material.dart';
import 'package:flutter_tts/screen/start.dart';
import 'package:flutter_tts/screen/login_signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginSignUpScreen(),
    );
  }
}
