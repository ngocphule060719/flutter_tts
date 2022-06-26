import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  late double cWidth;
  late double cHeight;
  String? hintT;
  Color? hintColor;
  double? tSize;
  Color? tColor;
  FontWeight? fWeight;

  TextFieldCustom(
      {required this.cHeight,
      required this.cWidth,
      this.hintT,
      this.hintColor,
      this.tColor,
      this.tSize,
      this.fWeight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.centerLeft,
        width: cWidth,
        height: cHeight,
        child: TextField(
          decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: hintT ?? "",
              hintStyle: TextStyle(
                  color: hintColor ?? Colors.grey,
                  fontSize: tSize ?? 22,
                  fontWeight: fWeight ?? FontWeight.normal),
              labelStyle: TextStyle(
                  color: tColor ?? Colors.black,
                  fontSize: tSize ?? 22,
                  fontWeight: fWeight ?? FontWeight.normal)),
        ),
      ),
    );
  }
}
