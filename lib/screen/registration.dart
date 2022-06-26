import 'package:flutter/material.dart';

import '../widget/button_back.dart';
import '../widget/button_text.dart';
import '../widget/text_field.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //bool isMatched = true;
  String notificationUnMatched = 'パスワードが一致しません';
  @override
  Widget build(BuildContext context) {
    final double swidth = MediaQuery.of(context).size.width;
    final double sheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: swidth,
        height: sheight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: swidth,
              height: sheight * 44 / 812,
            ),
            SizedBox(
              width: swidth * 49 / 375,
              height: sheight * 44 / 812,
              child: ButtonBack(
                tapBack: () {
                  print('back!');
                },
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 24 / 812,
            ),
            Container(
              width: swidth,
              //height: sheight * 44 / 812,
              padding: EdgeInsets.only(left: swidth * 16 / 375),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'youremail@gmail.com\nパスワードを確認してください',
                  //youremail@gmail.com Please check your password
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 54 / 812,
            ),
            Container(
              padding: EdgeInsets.only(left: swidth * 25 / 375),
              width: swidth,
              height: sheight * 40 / 812,
              child: TextFieldCustom(
                cHeight: sheight * 40 / 812,
                cWidth: swidth * 325 / 375,
                hintT: 'パスワードを入力してください', //Please enter your password
                hintColor: Colors.grey,
                tColor: Colors.black,
                tSize: 17,
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 24 / 812,
            ),
            Container(
              padding: EdgeInsets.only(left: swidth * 25 / 375),
              width: swidth,
              height: sheight * 40 / 812,
              child: TextFieldCustom(
                cHeight: sheight * 40 / 812,
                cWidth: swidth * 325 / 375,
                hintT: 'もう一度パスワードを入力してください', //Please enter your password again
                hintColor: Colors.grey,
                tColor: Colors.black,
                tSize: 17,
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 24 / 812,
            ),
            Container(
              width: swidth,
              height: sheight * 16 / 812,
              padding: EdgeInsets.only(left: swidth * 25 / 375),
              child: Text(
                notificationUnMatched,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: swidth,
              height: sheight * 54 / 812,
            ),
            Container(
              width: swidth,
              height: sheight * 46 / 812,
              padding: EdgeInsets.only(left: swidth * 16 / 375),
              child: ButtonWithText(
                bHeight: sheight * 46 / 812,
                bWidth: swidth * 343 / 375,
                bText: '次へ', //to the next
                fTap: () {
                  print('to the next');
                },
                bColor: Color.fromRGBO(29, 32, 136, 1),
                tColor: Colors.white,
                tSize: 17,
                fWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
