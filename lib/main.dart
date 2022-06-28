import 'package:flutter/material.dart';
import 'package:flutter_tts/screen/login_login.dart';
import 'package:flutter_tts/screen/login_login2.dart';
import 'package:flutter_tts/screen/login_password.dart';
import 'package:flutter_tts/screen/registration.dart';
import 'package:flutter_tts/screen/start.dart';
import 'package:flutter_tts/screen/login_signup.dart';
import 'package:flutter_tts/screen/enter_email_address.dart';
import 'package:flutter_tts/screen/welcome.dart';

// void main() {
//   runApp(const MyApp());
// }

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization(null);
  runApp(MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
    );
  }
}
