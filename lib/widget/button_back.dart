import 'package:flutter/material.dart';

class ButtonBack extends StatelessWidget {
  late Function tapBack;

  ButtonBack({required this.tapBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        width: 49,
        height: 44,
        child: GestureDetector(
          onTap: tapBack(),
          child: Image.asset('images/back_icon.png'),
        ),
      ),
    );
  }
}
