import 'package:flutter/material.dart';
import 'package:flutter_tts/widget/button_text.dart';

class PopUpDialog extends StatelessWidget {
  late String titleDialog;
  late String contentDialog;
  late bool isContent;
  late Function desRoute;

  PopUpDialog(
      {required this.titleDialog,
      required this.contentDialog,
      required this.isContent,
      required this.desRoute});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          textAlign: TextAlign.center,
          titleDialog,
          style: const TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      content: isContent
          ? Text(
              contentDialog,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            )
          : null,
      actions: <Widget>[
        Center(
          child: ButtonWithText(
            bWidth: 146,
            bHeight: 46,
            fTap: () {
              desRoute();
            },
            bText: '閉じる',
            bColor: Color.fromRGBO(29, 32, 136, 1),
            tColor: Colors.white,
            tSize: 14,
            fWeight: FontWeight.bold,
          ),
        ) // close up
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    );
  }
}
