import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  late double cWidth;
  late double cHeight;
  String? hintT;
  Color? hintColor;
  double? tSize;
  Color? tColor;
  FontWeight? fWeight;
  String? lText;
  InputBorder? inBorder;
  double? lSize;
  late bool passwordTextField;

  TextFieldCustom(
      {required this.cHeight,
      required this.cWidth,
      this.hintT,
      this.hintColor,
      this.tColor,
      this.tSize,
      this.fWeight,
      this.lText,
      this.inBorder,
      this.lSize,
      required this.passwordTextField});

  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool _isPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.centerLeft,
        width: widget.cWidth,
        height: widget.cHeight,
        child: TextField(
          obscureText: widget.passwordTextField ? !_isPassword : _isPassword,
          decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: () {
                  widget.passwordTextField
                      ? setState(() {
                          _isPassword = !_isPassword;
                        })
                      : null;
                },
                child: Icon(
                  widget.passwordTextField
                      ? (_isPassword ? Icons.visibility : Icons.visibility_off)
                      : Icons.abc,
                  color: widget.passwordTextField
                      ? Color.fromRGBO(29, 32, 136, 1)
                      : Colors.white,
                ),
              ),
              labelText: widget.lText ?? '',
              border: widget.inBorder ?? UnderlineInputBorder(),
              hintText: widget.hintT ?? '',
              hintStyle: TextStyle(
                  color: widget.hintColor ?? Colors.grey,
                  fontSize: widget.tSize ?? 22,
                  fontWeight: widget.fWeight ?? FontWeight.normal),
              labelStyle: TextStyle(
                  color: widget.tColor ?? Colors.black,
                  fontSize: widget.lSize ?? 22,
                  fontWeight: widget.fWeight ?? FontWeight.normal)),
        ),
      ),
    );
  }
}
