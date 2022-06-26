import 'package:flutter/material.dart';
import 'package:flutter_tts/screen/registration.dart';
import 'package:flutter_tts/screen/start.dart';
import 'package:flutter_tts/screen/login_signup.dart';
import 'package:flutter_tts/screen/enter_email_address.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationScreen(),
    );
  }
}
