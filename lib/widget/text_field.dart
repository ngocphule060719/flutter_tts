import 'package:flutter/material.dart';
import 'package:flutter_tts/screen/enter_email_address.dart';

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
  double? tHeight;
  int? maxLine;
  Color? lColor;
  FontWeight? tWeight;
  late bool passwordTextField;
  TextEditingController? tfController;

  TextFieldCustom(
      {required this.cHeight,
      required this.cWidth,
      this.maxLine,
      this.tHeight,
      this.hintT,
      this.hintColor,
      this.tColor,
      this.tSize,
      this.fWeight,
      this.lText,
      this.inBorder,
      this.lSize,
      required this.passwordTextField,
      this.lColor,
      this.tWeight,
      this.tfController});

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
          maxLines: widget.maxLine,
          controller: widget.tfController,
          style: TextStyle(
            fontFamily: 'Noto Sans JP',
            fontWeight: widget.tWeight ?? FontWeight.normal,
            fontSize: widget.tSize ?? 22,
            color: widget.tColor ?? Colors.black,
            height: widget.tHeight ?? 1.0,
          ),
          obscureText: widget.passwordTextField ? !_isPassword : _isPassword,
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
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
              border: widget.inBorder ?? const UnderlineInputBorder(),
              hintText: widget.hintT ?? '',
              hintStyle: TextStyle(
                  fontFamily: 'Noto Sans JP',
                  color: widget.hintColor ?? Colors.grey,
                  fontSize: widget.tSize ?? 22,
                  fontWeight: widget.fWeight ?? FontWeight.normal),
              labelStyle: TextStyle(
                  fontFamily: 'Roboto',
                  color: widget.lColor ?? widget.tColor ?? Colors.black,
                  fontSize: widget.lSize ?? 22,
                  fontWeight: widget.fWeight ?? FontWeight.normal)),
        ),
      ),
    );
  }
}
