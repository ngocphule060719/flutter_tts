import 'package:flutter/material.dart';

class DropDownCustom extends StatefulWidget {
  late double dWidth;
  late double dHeight;
  late List<String> inputData;
  String? lText;
  double? lSize;
  Color? lColor;
  FontWeight? lFontW;
  String? hText;
  double? hSize;
  Color? hColor;
  FontWeight? hFontW;
  Color? tColor;
  FontWeight? tFontW;

  DropDownCustom({
    required this.dHeight,
    required this.dWidth,
    required this.inputData,
    this.lText,
    this.lSize,
    this.lColor,
    this.lFontW,
    this.hText,
    this.hSize,
    this.hFontW,
    this.hColor,
    this.tFontW,
    this.tColor,
  });

  @override
  State<DropDownCustom> createState() => _DropDownCustomState();
}

class _DropDownCustomState extends State<DropDownCustom> {
  String? selectedValue;
  final Color defaultTextColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: widget.dWidth,
        height: widget.dHeight,
        child: DropdownButtonFormField(
          icon: Icon(Icons.keyboard_arrow_down),
          decoration: InputDecoration(
            labelText: widget.lText ?? 'label',
            labelStyle: TextStyle(
                fontFamily: 'Roboto',
                color: widget.lColor ?? defaultTextColor,
                fontWeight: widget.lFontW ?? FontWeight.normal,
                fontSize: widget.lSize ?? 10),
            hintText: widget.hText ?? 'hint',
            hintStyle: TextStyle(
                fontFamily: 'Noto Sans JP',
                color: widget.hColor ?? defaultTextColor,
                fontWeight: widget.hFontW ?? FontWeight.normal,
                fontSize: widget.hSize ?? 10),
            border: OutlineInputBorder(),
          ),
          style: TextStyle(
            fontFamily: 'Noto Sans JP',
            color: widget.tColor ?? defaultTextColor,
            fontSize: widget.hSize ?? 10,
            fontWeight: widget.tFontW ?? FontWeight.normal,
          ),
          items: widget.inputData.map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  color: widget.tColor ?? defaultTextColor,
                  fontSize: widget.hSize ?? 10,
                  fontWeight: widget.tFontW ?? FontWeight.normal,
                  fontFamily: 'Noto Sans JP',
                ),
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedValue = value.toString();
            });
          },
          validator: (value) {
            if (value.toString().isEmpty) {
              return '選択してください';
            } else {
              return null;
            }
          },
        ),
      ),
    );
  }
}
