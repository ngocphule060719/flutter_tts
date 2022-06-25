import 'package:flutter/material.dart';

class ButtonWithText extends StatelessWidget {
  late double bWidth;
  late double bHeight;
  Color? bColor;
  late Function fTap;
  late String bText;
  Color? tColor;
  double? tSize;
  FontWeight? fWeight;

  ButtonWithText(
      {required this.bWidth,
      required this.bHeight,
      required this.fTap,
      required this.bText,
      this.bColor,
      this.tColor,
      this.tSize,
      this.fWeight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: bWidth,
        height: bHeight,
        decoration: BoxDecoration(
            color: bColor ?? Colors.white,
            borderRadius: BorderRadius.circular(100)),
        child: GestureDetector(
          onTap: () {
            fTap;
          },
          child: Center(
              child: Text(
            bText,
            style: TextStyle(
                color: tColor ?? Colors.black,
                fontSize: tSize ?? 10,
                fontWeight: fWeight ?? FontWeight.normal),
          )),
        ),
      ),
    );
  }
}
