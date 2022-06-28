import 'package:flutter/material.dart';

class ButtonWithTextAndIcon extends StatelessWidget {
  late double bHeight;
  late double bWidth;
  late String bText;
  late String bIcon;
  late Function fTap;
  Color? bColor;
  Color? borderColor;
  Color? tColor;
  double? tSize;
  FontWeight? fWeight;

  ButtonWithTextAndIcon(
      {required this.bHeight,
      required this.bWidth,
      required this.bText,
      required this.bIcon,
      required this.fTap,
      this.bColor,
      this.borderColor,
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
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: borderColor ?? bColor ?? Colors.white)),
        child: GestureDetector(
          onTap: () {
            fTap();
          },
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 0,
                child: SizedBox(
                  height: bHeight,
                  width: bWidth / 6,
                  child: Center(child: Image.asset(bIcon)),
                ),
              ),
              Center(
                  child: Text(
                bText,
                style: TextStyle(
                    color: tColor ?? Colors.white,
                    fontSize: tSize ?? 10,
                    fontWeight: fWeight ?? FontWeight.normal),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
